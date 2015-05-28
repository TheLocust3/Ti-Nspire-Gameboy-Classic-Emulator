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