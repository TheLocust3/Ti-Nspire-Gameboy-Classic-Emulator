function setFlags (z, s, hc, c)
	flag = {0, 0, 0, 0, 0, 0, 0, 0}

	if z ~= nil then
		fZero = z
	end

	if s ~= nil then
		fSubtract = s
	end

	if hc ~= nil then
		fHalfCarry = hc
	end

	if c ~= nil then
		fCarry = c
	end

	if z == true then
		flag[8] = 1
	else
		flag[8] = 0
	end

	if s == true then
		flag[7] = 1
	else
		flag[7] = 0
	end

	if hc == true then
		flag[6] = 1
	else
		flag[6] = 0
	end

	if c == true then
		flag[5] = 1
	else
		flag[5] = 0
	end

	registers[8] = toInt(flag)
end

function store16b (rIndex1, rIndex2, num)
	registers[rIndex1] = shiftRight(num, 8)
	registers[rIndex2] = toInt(toBits(num, 8))
end

function getRegister_16b (first)
	return to16b(registers[first], registers[first + 1])
end

--function to16b (high, low)
function to16b (low, high) -- This might have some negative effects
	return shiftLeft(high, 8) + low
end

function halfCarry_add_8 (a, b)
	if bitwiseAnd_8(bitwiseAnd_8(a, 0xf) + bitwiseAnd_8(b, 0xf), 0xf0) > 0 then
		return true
	else
		return false
	end
end

function halfCarry_add_16 (a, b)
	if bitwiseAnd_16(bitwiseAnd_16(a, 0xfff) + bitwiseAnd_16(b, 0xfff), 0xfff0) > 0 then
		return true
	else
		return false
	end
end

function halfCarry_sub_8 (a, b)
	if bitwiseAnd_8(bitwiseAnd_8(a, 0xf) - bitwiseAnd_8(b, 0xf), 0x08) ~= a then
		return true
	else
		return false
	end
end

function callInterrupt (location, bit)
	if ime == true and bitwiseAnd_8(get_8b(0xffff), bit) > 0 then
		di()
		call(nil, pc)
	end
end