function on.charIn (char)
	stop = false
	if bitwiseAnd_8(get_8b(0xff00), 0x20) > 0 then -- Must have selected button keys
    	if char == '9' then -- A
    		print("9")
    	else

    	end

    	if char == '6' then -- B
    		print("6")
    	else

    	end
	end
end

function on.arrowUp ()
	stop = false
	if bitwiseAnd_8(get_8b(0xff00), 0x10) > 0 then -- Must have selected directional keys
		print("Up")
	end
end

function on.arrowDown ()
	stop = false
	if bitwiseAnd_8(get_8b(0xff00), 0x10) > 0 then -- Must have selected directional keys
		print("Down")
	end
end

function on.arrowLeft ()
	stop = false
	if bitwiseAnd_8(get_8b(0xff00), 0x10) > 0 then -- Must have selected directional keys
		print("Left")
	end
end

function on.arrowRight ()
	stop = false
	if bitwiseAnd_8(get_8b(0xff00), 0x10) > 0 then -- Must have selected directional keys
		print("Right")
	end
end

speed = 0

function main ()
	start = timer.getMilliSecCounter()
	old = timer.getMilliSecCounter()
	wait = 0
	dispatch = false
	refresh = false

	speed = 0
	while wait < 5 do
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
		end

		-- V-Blank Interrupt
		if vBlank >= 59 then
			callInterrupt(0x40, 0x01, 1)

			vBlank = 0
		elseif vBlank >= 1 and bitwiseAnd_8(get_8b(0xff0f), 0x01) == 1 then
			flags = toBits(get_8b(0xff0f), 8)
			flags[1] = 0
			write_8b(0xff0f, flags)

			vBlank = vBlank + ((timer.getMilliSecCounter() - old) * speedScaler)
		else
			vBlank = vBlank + ((timer.getMilliSecCounter() - old) * speedScaler)
		end

		-- Increment Divider Register
		div = get_8b(0xff04)
		div = div + ((16 * (timer.getMilliSecCounter() - old)) * speedScaler) -- Rounded from 16.384
		if div > 0xff then
			div = 0
		end
		write_8b(0xff04, div)

		if bitwiseAnd_8(get_8b(0xff07), 0x04) == 1 then -- Check if timer is enabled
			-- Set timerSpeed
			bit1 = bitwiseAnd_8(get_8b(0xff07), 0x01)
			bit2 = bitwiseAnd_8(get_8b(0xff07), 0x02)
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

		c = c - (timerSpeed * (timer.getMilliSecCounter() - old))

		wait = (timer.getMilliSecCounter() - start) * speedScaler -- Slow down speed
	end
end

time = 0

function on.timer ()
	time = timer.getMilliSecCounter()

	main()

	time = timer.getMilliSecCounter() - time
end

timer.start(0.01)
