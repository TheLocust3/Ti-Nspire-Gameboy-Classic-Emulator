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
vBlankInterrupt = Interrupt({check = vBlankCheck, run = vBlankRun, fail = vBlankFail, variable = 0}, 0x40, 0x1)
scanLineInterrupt = Interrupt({check = scanLineCheck}, 0x48, 0x2)
timerOverflowInterrupt = Interrupt({check = timerOverflowCheck, run = timerOverflowRun}, 0x50, 0x2)
-- No Serial Transfer Completion because this will never be implemented
keyBounce = false -- This one is a bit wierd and has yet to be implemented
interruptArray = {vBlankInterrupt, scanLineInterrupt, timerOverflowInterrupt}

timerSpeed = 4 -- 4096 * 0.001 and truncate

graphics = Graphics()

-- Program Counter
pc = 0x1 -- Start of rom is be 0x101 but the start of the bios is 0x105
pcHex = 0x00

c = 0 -- The amount of clock cycles until the next command is run

debugger = Debugger()

displayedMessage = ""
timesMessageDisplayed = 0

memory = Memory(rom)
runBios = true -- Start bios on startup

rom = nil
collectgarbage() -- Deallocate rom
