-- {A, B, C, D, E, H, L, F, SP} 
registers = {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xfffe}

-- Flags (Must be manually placed in register F)
fZero = false
fSubtract = false
fHalfCarry = false
fCarry = false

ime = true

speedScaler = 0.5 -- Smallest time in Lua is millisecond so everything will run half speed (this can be changed to be faster in the futer)

-- Interrupts
vBlank = 0
lcdcStatus = false
timerOverflow = false
-- No Serial Transfer Completion because this will never be implemented
keyBounce = false

-- Memory Register Stuff
timerSpeed = 4 -- 4096 * 0.001 and truncate

-- Program Counter
pc = 0x101 -- Start of rom is be 0x101 but the start of the bios is 0x105

memory = {0}

i = 1

while i <= 65536 do
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

-- Set specific memory values
write_8b(0xff00, 0xf)