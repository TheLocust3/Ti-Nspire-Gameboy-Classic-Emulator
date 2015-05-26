function setFlags (z, s, hc, c)
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
end

function store16b (rIndex1, rIndex2, num)
	registers[rIndex1] = shiftRight(num, 8)
	registers[rIndex2] = bitwiseAnd(toBits(num, 16), 0x00ff)
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
	if bitwiseAnd(toBits(bitwiseAnd(a, 0xfff) + bitwiseAnd(b, 0xfff), 16), toBits(0xfff0, 16)) > 0 then
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