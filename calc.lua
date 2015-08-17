function on.charIn (char)
  stop = debugger.mode == 2 
  if bitwiseAnd_8b(memory:read_8b(0xff00), 0x20) > 0 then -- Must have selected button keys
    if char == '9' then -- A
      print("9")
    else

    end

    if char == '6' then -- B
      print("6")
    else

    end
  end

  if debugger.mode == 0 or debugger.mode == 2 then
    debugger:setCommand(debugger.command .. char)
  end
end

function on.arrowUp ()
  stop = debugger.mode == 2
  if bitwiseAnd_8b(memory:read_8b(0xff00), 0x10) > 0 then -- Must have selected directional keys
    print("Up")
  end
end

function on.arrowDown ()
  stop = debugger.mode == 2 
  if bitwiseAnd_8b(memory:read_8b(0xff00), 0x10) > 0 then -- Must have selected directional keys
    print("Down")
  end
end

function on.arrowLeft ()
  stop = debugger.mode == 2 
  if bitwiseAnd_8b(memory:read_8b(0xff00), 0x10) > 0 then -- Must have selected directional keys
    print("Left")
  end
end

function on.arrowRight ()
  stop = debugger.mode == 2 
  if bitwiseAnd_8b(memory:read_8b(0xff00), 0x10) > 0 then -- Must have selected directional keys
    print("Right")
  end
end

function on.enterKey ()
  if debugger.mode == 0 or debugger.mode == 2 then
    debugger:check()
  end
end

function on.backspaceKey () 
  debugger:setCommand(string.sub(debugger.command, 1, string.len(debugger.command) - 1))
end

speed = 0

function main ()
  start = timer.getMilliSecCounter()
  old = timer.getMilliSecCounter()
  wait = 0
  dispatch = false
  refresh = false

  speed = 0
  while wait < 10 * speedScaler do
    speed = speed + 1
    old = timer.getMilliSecCounter()

    if stop == false and halt == false then
      if refresh == false then
        platform.window:invalidate()
        refresh = true
      end

      if c <= 0 then
        dispatcher()
      end

      -- Increment Divider Register
      div = memory:read_8b(0xff04)
      div = div + ((16 * (timer.getMilliSecCounter() - old)) * speedScaler) -- Rounded from 16.384
      if div > 0xff then
        div = 0
      end
      memory:writeNoCheck_8b(0xff04, div)

      if bitwiseAnd_8b(memory:read_8b(0xff07), 0x04) == 1 then -- Check if timer is enabled
        -- Set timerSpeed
        bit1 = bitwiseAnd_8b(memory:read_8b(0xff07), 0x01)
        bit2 = bitwiseAnd_8b(memory:read_8b(0xff07), 0x02)
        if bit1 == 0 and bit2 == 0 then
          timerSpeed = 4
        elseif bit1 == 0 and bit2 == 1 then
          timerSpeed = 262
        elseif bit1 == 1 and bit2 == 0 then
          timerSpeed = 65
        elseif bit1 == 1 and bit2 == 1 then
          timerSpeed = 16
        end
        timerSpeed = timerSpeed * speedScaler

        -- Increment Timer Register
        rTimer = memory:read_8b(0xff05)
        rTimer = rTimer + (timerSpeed * (timer.getMilliSecCounter() - old))
        memory:write_8b(0xff05, rTimer)
      end
    end

    for i = 1, #interruptArray do
      if interruptArray[i]:run() then
        break -- High priority interrupt ran so no others should run
      end
    end

    c = c - (timerSpeed * (timer.getMilliSecCounter() - old))
    if debugger.step == true and c >= 0 then
      stop = true 
      debugger.step = false
    end

    wait = (timer.getMilliSecCounter() - start) * speedScaler -- Slow down speed
  end
end

time = 0

function on.timer ()
  time = timer.getMilliSecCounter()

  if debugger.mode == 1 or (debugger.mode == 2 and stop == false) then
    main()
  else
    platform.window:invalidate()
  end

  time = timer.getMilliSecCounter() - time
end

timer.start(0.01)
