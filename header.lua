-- {A, B, C, D, E, H, L, F, SP} 
registers = {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0}

-- Flags (Must be manually placed in register F)
fZero = false
fSubtract = false
fHalfCarry = false
fCarry = false

-- Program Counter
pc = 0x100 -- Start of rom is be 0x100 but the start of the bios is 0x104

memory = {0}

i = 0
 
while i < #memory do
	memory[i] = 0

	i = i + 1
end