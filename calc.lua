function on.charIn (char)
	if bitwiseAnd_8(get_8b(0xff00), 0x20) > 0 then -- Must have selected button keys
		if char == '8' then
			bits = toBits(get_8b(0xff00), 8)
			bits[1] = 0

			write_8b(toInt(bits))
		elseif char == '9' then
			bits = toBits(get_8b(0xff00), 8)
			bits[2] = 0

			write_8b(toInt(bits))
		end
	elseif bitwiseAnd_8(get_8b(0xff00), 0x10) > 0 then -- Must have selected directional keys

	end
end

function main ()
	i = 0
	while i < 10 do
		old = timer.getMilliSecCounter()

		if vBlank == 60 then
			callInterrupt(0x40, 0x01)

			vBlank = 0
		else
			vBlank = vBlank + 1
		end

		new = timer.getMilliSecCounter()
		while old + 1 > new do
			new = timer.getMilliSecCounter()
		end

		i = i + 1
	end
end

function on.timer ()
	start = timer.getMilliSecCounter()
	dispatcher()

	platform.window:invalidate()

	main()
end

timer.start(0.01)