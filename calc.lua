function on.charIn (char)
  stop = mode == 2 
  if bitwiseAnd_8b(get_8b(0xff00), 0x20) > 0 then -- Must have selected button keys
    if char == '9' then -- A
      print("9")
    else

    end

    if char == '6' then -- B
      print("6")
    else

    end
  end

  if mode == 0 or mode == 2 then
    commandString = commandString .. char
  end
end

function on.arrowUp ()
  stop = mode == 2
  if bitwiseAnd_8b(get_8b(0xff00), 0x10) > 0 then -- Must have selected directional keys
    print("Up")
  end
end

function on.arrowDown ()
  stop = mode == 2 
  if bitwiseAnd_8b(get_8b(0xff00), 0x10) > 0 then -- Must have selected directional keys
    print("Down")
  end
end

function on.arrowLeft ()
  stop = mode == 2 
  if bitwiseAnd_8b(get_8b(0xff00), 0x10) > 0 then -- Must have selected directional keys
    print("Left")
  end
end

function on.arrowRight ()
  stop = mode == 2 
  if bitwiseAnd_8b(get_8b(0xff00), 0x10) > 0 then -- Must have selected directional keys
    print("Right")
  end
end

function on.enterKey ()
  if mode == 0 or mode == 2 then
    checkCommand(commandString)
  end
end

function on.backspaceKey () 
  commandString = string.sub(commandString, 1, string.len(commandString) - 1)
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
      div = get_8b(0xff04)
      div = div + ((16 * (timer.getMilliSecCounter() - old)) * speedScaler) -- Rounded from 16.384
      if div > 0xff then
        div = 0
      end
      write_8b(0xff04, div)

      if bitwiseAnd_8b(get_8b(0xff07), 0x04) == 1 then -- Check if timer is enabled
        -- Set timerSpeed
        bit1 = bitwiseAnd_8b(get_8b(0xff07), 0x01)
        bit2 = bitwiseAnd_8b(get_8b(0xff07), 0x02)
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
        rTimer = get_8b(0xff05)
        rTimer = rTimer + (timerSpeed * (timer.getMilliSecCounter() - old))
        if rTimer > 0xff then
          rTimer = 0
          callInterrupt(0x50, 0x02, 2)
        end
        write_8b(0xff05, rTimer)
      end
    end

		if stop == false then
    	-- V-Blank Interrupt
    	if vBlank >= 59 and bitwiseAnd_8b(get_8b(0xff0f), 0x01) == 1 then
      	callInterrupt(0x40, 0x01, 1)

      	vBlank = 0
    	elseif bitwiseAnd_8b(get_8b(0xff0f), 0x01) == 1 and ime == true then
     		flags = toBits(get_8b(0xff0f), 8)
      	flags[1] = 0
      	write_8b(0xff0f, flags)

      	vBlank = vBlank + ((timer.getMilliSecCounter() - old) * speedScaler)
    	end

    	-- LYC=LY Coincidence Interrupt 
    	if bitwiseAnd_8b(0xff41, 0x40) > 0 and ime == true then 
     		if scanLine == compareScanLine then
        	callInterrupt(0x48, 0x02, 2) 
      	end 
    	end
		end

    c = c - (timerSpeed * (timer.getMilliSecCounter() - old))
    if stepping == true and c >= 0 then
      stop = true 
      stepping = false
    end

    wait = (timer.getMilliSecCounter() - start) * speedScaler -- Slow down speed
  end
end

time = 0

function on.timer ()
  time = timer.getMilliSecCounter()

  if mode == 1 or (mode == 2 and stop == false) then
    main()
  else
    platform.window:invalidate()
  end

  time = timer.getMilliSecCounter() - time
end

timer.start(0.01)
