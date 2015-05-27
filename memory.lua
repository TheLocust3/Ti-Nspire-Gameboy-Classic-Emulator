function get_8b (location)
	return memory[location]
end

function get_16b (location)
	return to16b(get_8b(location + 1), get_8b(location))
end

function write_8b (location, value)
	memory[location] = value
end

function write_16b (location, value)
	memory[location] = shiftRight(value, 8)
	memory[location + 1] = toInt(toBits(value, 8))
end