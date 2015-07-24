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

-- Graphics Stuff
lcdDisplay = false
windowTileLocation = 0x9800
windowDisplay = false
tileData = 0x8800
bgTileLocation = 0x9800
spriteHeight = 8
spriteDisplay = false
bgWindowDisplay = false
scroll = {0, 0} -- X, Y
windowPosition = {0, 0} -- X, Y
bgWinPalette = 0x0
objPalette0 = 0x0
objPalette1 = 0x0

-- Program Counter
pc = 0x101 -- Start of rom is be 0x101 but the start of the bios is 0x105

c = 0 -- The amount of clock cycles until the next command is run

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