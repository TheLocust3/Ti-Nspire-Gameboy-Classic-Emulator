-- {A, F, B, C, D, E, H, L, SP} 
registers = {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0}

-- Flags (Must be manually placed in register F)
fZero = false
fSubtract = false
fHalfCarry = false
fCarry = false

-- Program Counter
pc = 0x100 -- Start of rom should be 0x100