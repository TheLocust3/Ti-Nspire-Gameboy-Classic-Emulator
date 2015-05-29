-- {A, B, C, D, E, H, L, F, SP} 
registers = {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xfffe}

-- Flags (Must be manually placed in register F)
fZero = false
fSubtract = false
fHalfCarry = false
fCarry = false

ime = true

-- Interrupts
vBlank = 0
lcdcStatus = false
timerOverflow = false
-- No Serial Transfer Completion because this will never be implemented
keyBounce = false

-- Program Counter
pc = 0x101 -- Start of rom is be 0x101 but the start of the bios is 0x105

memory = {0}

i = 1

while i <= 0xffff do
	memory[i] = 0

	i = i + 1
end

i = 1

while i <= #rom do
	memory[i] = rom[i]

	i = i + 1
end

rom = nil
collectgarbage() -- Deallocate rom