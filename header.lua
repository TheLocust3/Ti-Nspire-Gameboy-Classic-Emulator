-- {A, B, C, D, E, H, L, F, SP} 
registers = {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xfffe}

-- Flags (Must be manually placed in register F)
zeroFlag = ZeroFlag(false)
subtractFlag = SubtractFlag(false)
carryFlag = CarryFlag(false)
halfCarryFlag = HalfCarryFlag(false)

ime = false 

speedScaler = 0.5 -- Smallest time in Lua is millisecond so everything will run half speed (this can be changed to be faster in the futer)

stop = false
halt = false

-- Interrupts
vBlank = 0
vBlankInterrupt = Interrupt({check = vBlankCheck, run = vBlankRun, fail = vBlankFail}, 0x40, 0x1)
scanLineInterrupt = Interrupt({check = scanLineCheck}, 0x48, 0x2)

lcdcStatus = false
timerOverflowInterrupt = Interrupt({check = timerOverflowCheck, run = timerOverflowRun}, 0x50, 0x2)
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
backgroundTileMap = {{}}
windowTileMap = {{}}
spriteData = {{0}}

-- Program Counter
pc = 0x101 -- Start of rom is be 0x101 but the start of the bios is 0x105
pcHex = 0x00

c = 0 -- The amount of clock cycles until the next command is run

-- Mode: 0 = None, 1 = Normal, 2 = Debug
mode = 0

commandString = ""
commandError = "Type a command:"
renderHelp = false
renderRegisters = false
renderFlags = false
stepping = false
inputAddress = -1
stopOn = "Completely random string"

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
