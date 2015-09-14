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
pc = 0x101 -- Start of rom is be 0x101 but the start of the bios is 0x105
pcHex = 0x00

c = 0 -- The amount of clock cycles until the next command is run

debugger = Debugger()

displayedMessage = ""
timesMessageDisplayed = 0

memory = Memory(rom)

-- Set BIOS values
writeRegister_16b(1, 8, 0x01)
registers[8] = 0xb0
writeRegister_16b(2, 3, 0x0013)
writeRegister_16b(4, 5, 0x00d8)
writeRegister_16b(6, 7, 0x014d)
registers[9] = 0xfffe
memory:write_8b(0xff10, 0x80)
memory:write_8b(0xff11, 0xbf)
memory:write_8b(0xff12, 0xf3)
memory:write_8b(0xff14, 0xbf)
memory:write_8b(0xff16, 0x3f)
memory:write_8b(0xff19, 0xbf)
memory:write_8b(0xff1a, 0x7f)
memory:write_8b(0xff1b, 0xff)
memory:write_8b(0xff1c, 0x9f)
memory:write_8b(0xff1e, 0xbf)
memory:write_8b(0xff20, 0xff)
memory:write_8b(0xff23, 0xbf)
memory:write_8b(0xff24, 0x77)
memory:write_8b(0xff25, 0xf3)
memory:write_8b(0xff26, 0xf1)
memory:write_8b(0xff40, 0x91)
memory:write_8b(0xff47, 0xfc)
memory:write_8b(0xff48, 0xff)
memory:write_8b(0xff49, 0xff)

rom = nil
collectgarbage() -- Deallocate rom
