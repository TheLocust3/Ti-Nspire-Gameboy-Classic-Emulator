function on.charIn (char)
	if bitwiseAnd_8(get_8b(0xff00), 0x20) > 0 then -- Must have selected button keys
    
	elseif bitwiseAnd_8(get_8b(0xff00), 0x10) > 0 then -- Must have selected directional keys

	end
end

function main ()
	start = timer.getMilliSecCounter()
	old = timer.getMilliSecCounter()
	wait = 0
	dispatch = false
	refresh = false

	i = 0
	while wait < 10 do
		old = timer.getMilliSecCounter()

		if refresh == false then
			platform.window:invalidate()
			refresh = true
		end

		if dispatch == false then
			dispatcher()
			dispatch = true
		end

		if vBlank >= 59 then
			callInterrupt(0x40, 0x01, 1)

			vBlank = 0
		elseif vBlank >= 1 and bitwiseAnd_8(get_8b(0xff0f), 0x01) == 1 then
			flags = toBits(get_8b(0xff0f), 8)
			flags[1] = 0
			write_8b(0xff0f, flags)

			vBlank = vBlank + (old - start)
		else
			vBlank = vBlank + (old - start)
		end

		wait = timer.getMilliSecCounter() - start
	end
end

time = 0

function on.timer ()
	time = timer.getMilliSecCounter()

	main()

	time = timer.getMilliSecCounter() - time
end

timer.start(0.01)