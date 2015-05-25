function get_8b (location)
	return memory[location]
end

function get_16b (location)
	return to16b(location, location + 1)
end

function write_8b (location, value)
	memory[location] = value
end

function write_16b (location, value)
	memory[location] = shiftRight(value, 8)
	memory[location + 1] = bitwiseAnd(toBits(value, 16), 0x00ff)
end