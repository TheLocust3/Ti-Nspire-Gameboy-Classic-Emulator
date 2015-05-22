function setFlags (z, s, c, hc)
	if z ~= nil then
		fZero = z
	end

	if s ~= nil then
		fSubtract = s
	end
	
	if c ~= nil then
		fCarry = c
	end

	if hc ~= nil then
		fHalfCarry = hc
	end
end

function halfCarry_add_8 (a, b)
	if bitwiseAnd_8(bitwiseAnd(a, 0xf) + bitwiseAnd(b, 0xf), 0x10) then
		return true
	else
		return false
	end
end

function halfCarry_sub_8 (a, b)
	if bitwiseAnd_8(bitwiseAnd(a, 0xf) - bitwiseAnd(b, 0xf), 0x08) then
		return true
	else
		return false
	end
end