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
	print(bitwiseAnd(toBits(value, 16), toBits(0x00ff, 16)))
	memory[location] = shiftRight(bitwiseAnd(toBits(value, 16), toBits(0xff00, 16)), 8)
	memory[location + 1] = bitwiseAnd(toBits(value, 16), toBits(0x00ff, 16))
end