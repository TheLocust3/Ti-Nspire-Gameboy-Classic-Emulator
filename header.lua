-- {A, B, C, D, E, H, L, F, SP} 
registers = {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xfffe}

-- Flags (Must be manually placed in register F)
fZero = false
fSubtract = false
fHalfCarry = false
fCarry = false

ime = false 

speedScaler = 0.5 -- Smallest time in Lua is millisecond so everything will run half speed (this can be changed to be faster in the futer)

stop = false
halt = false

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
windowTileMapAddress = {0x9800, 0x9bff}
windowDisplay = false
tileDataAddress = {0x8800, 0x97ff}
bgTileMapAddress = {0x9800, 0xbff}
spriteHeight = 8
spriteDisplay = false
bgWindowDisplay = false
scroll = {0, 0} -- X, Y
windowPosition = {0, 0} -- X, Y
bgWinPalette = {0, 0, 0, 0} 
objPalette0 = {0, 0, 0, 0} 
objPalette1 = {0, 0, 0, 0} 
scanLine = 0
compareScanLine = 0
tileData = {{0}}
spriteData = {{0}}

-- Program Counter
pc = 0x101 -- Start of rom is be 0x101 but the start of the bios is 0x105

c = 0 -- The amount of clock cycles until the next command is run

-- Mode: 0 = None, 1 = Normal, 2 = Debug
mode = 0

commandString = ""
commandError = "Type a command:"
renderHelp = false

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
