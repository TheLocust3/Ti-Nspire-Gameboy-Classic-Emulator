-- {A, B, C, D, E, H, L, F, SP} 
registers = {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xfffe}

-- Flags (Must be manually placed in register F)
fZero = false
fSubtract = false
fHalfCarry = false
fCarry = false

-- Program Counter
pc = 0x101 -- Start of rom is be 0x101 but the start of the bios is 0x105

memory = {0}

i = 0
 
while i < 65535 do
	memory[i] = 0

	i = i + 1
end