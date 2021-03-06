-- Opcodes
-- Each command has a corresponding "base" command to reduce reptition 
-- Each Base command takes many different arugments. A few of these include:
--   rIndex (rIndex1, rIndex2) - These correspond with register numbers (register numbers avaible in header.lua)
--   n, nn, b - These parameters correspond with the letters given in their command documentation (found in http://marc.rawer.de/Gameboy/Docs/GBCPUman.pdf). These will vary.
--   store - This parameter indicates if the result should be stored in memory. rIndex is interperated as the start to a 16 bit register (6 = HL or 6 + 7). This is only used in commands that involve HL

-- 8-Bit Loads

function ld_8b (rIndex, n)
  eAssert("ld_8b", rIndex, "rIndex", "number")
  eAssert("ld_8b", n, "n", "number")

  registers[rIndex] = n
end

-- 0x06
function LD_B_n (n)
  ld_8b(2, n)
end

-- 0x0e
function LD_C_n (n)
  ld_8b(3, n)
end

-- 0x16
function LD_D_n (n)
  ld_8b(4, n)
end

-- 0x1e
function LD_E_n (n)
  ld_8b(5, n)
end

-- 0x26
function LD_H_n (n)
  ld_8b(6, n)
end

-- 0x2e
function LD_L_n (n)
  ld_8b(7, n)
end

-- 0x7f
function LD_A_A ()
  ld_8b(1, registers[1])
end

-- 0x78
function LD_A_B ()
  ld_8b(1, registers[2])
end

-- 0x79
function LD_A_C ()
  ld_8b(1, registers[3])
end

-- 0x7a
function LD_A_D ()
  ld_8b(1, registers[4])
end

-- 0x7b
function LD_A_E ()
  ld_8b(1, registers[5])
end

-- 0x7c
function LD_A_H ()
  ld_8b(1, registers[6])
end

-- 0x7d
function LD_A_L ()
  ld_8b(1, registers[7])
end

-- 0x7e
function LD_A_HL ()
  ld_8b(1, memory:read_8b(getRegister_16b(6)))
end

-- 0x40
function LD_B_B ()
  ld_8b(2, registers[2])
end

-- 0x41
function LD_B_C ()
  ld_8b(2, registers[3])
end

-- 0x42
function LD_B_D ()
  ld_8b(2, registers[4])
end

-- 0x43
function LD_B_E ()
  ld_8b(2, registers[5])
end

-- 0x44
function LD_B_H ()
  ld_8b(2, registers[6])
end

-- 0x45
function LD_B_L ()
  ld_8b(2, registers[7])
end

-- 0x46
function LD_B_HL ()
  ld_8b(2, memory:read_8b(getRegister_16b(6)))
end

-- 0x48
function LD_C_B ()
  ld_8b(3, registers[2])
end

-- 0x49
function LD_C_C ()
  ld_8b(3, registers[3])
end

-- 0x4a
function LD_C_D ()
  ld_8b(3, registers[4])
end

-- 0x4b
function LD_C_E ()
  ld_8b(3, registers[5])
end

-- 0x4c
function LD_C_H ()
  ld_8b(3, registers[6])
end

-- 0x4d
function LD_C_L ()
  ld_8b(3, registers[7])
end

-- 0x4e
function LD_C_HL ()
  ld_8b(3, memory:read_8b(getRegister_16b(6)))
end

-- 0x50
function LD_D_B ()
  ld_8b(4, registers[2])
end

-- 0x51
function LD_D_C ()
  ld_8b(4, registers[3])
end

-- 0x52
function LD_D_D ()
  ld_8b(4, registers[4])
end

-- 0x53
function LD_D_E ()
  ld_8b(4, registers[5])
end

-- 0x54
function LD_D_H ()
  ld_8b(4, registers[6])
end

-- 0x55
function LD_D_L ()
  ld_8b(4, registers[7])
end

-- 0x56
function LD_D_HL ()
  ld_8b(4, memory:read_8b(getRegister_16b(6)))
end

-- 0x58
function LD_E_B ()
  ld_8b(5, registers[2])
end

-- 0x59
function LD_E_C ()
  ld_8b(5, registers[3])
end

-- 0x5a
function LD_E_D ()
  ld_8b(5, registers[4])
end

-- 0x5b
function LD_E_E ()
  ld_8b(5, registers[5])
end

-- 0x5c
function LD_E_H ()
  ld_8b(5, registers[6])
end

-- 0x5d
function LD_E_L ()
  ld_8b(5, registers[7])
end

-- 0x5e
function LD_E_HL ()
  ld_8b(5, memory:read_8b(getRegister_16b(6)))
end

-- 0x60
function LD_H_B ()
  ld_8b(6, registers[2])
end

-- 0x61
function LD_H_C ()
  ld_8b(6, registers[3])
end

-- 0x62
function LD_H_D ()
  ld_8b(6, registers[4])
end

-- 0x63
function LD_H_E ()
  ld_8b(6, registers[5])
end

-- 0x64
function LD_H_H ()
  ld_8b(6, registers[6])
end

-- 0x65
function LD_H_L ()
  ld_8b(6, registers[7])
end

-- 0x66
function LD_H_HL ()
  ld_8b(6, memory:read_8b(getRegister_16b(6)))
end

-- 0x68
function LD_L_B ()
  ld_8b(7, registers[2])
end

-- 0x69
function LD_L_C ()
  ld_8b(7, registers[3])
end

-- 0x6a
function LD_L_D ()
  ld_8b(7, registers[4])
end

-- 0x6b
function LD_L_E ()
  ld_8b(7, registers[5])
end

-- 0x6c
function LD_L_H ()
  ld_8b(7, registers[6])
end

-- 0x6d
function LD_L_L ()
  ld_8b(7, registers[7])
end

-- 0x6e
function LD_L_HL ()
  ld_8b(7, memory:read_8b(getRegister_16b(6)))
end

function ldMemory_8b (rIndex, value)
  eAssert("ldMemory_8b", rIndex, "rIndex", "number")
  eAssert("ldMemory_8b", value, "value", "number")

  memory:write_8b(getRegister_16b(rIndex), value)
end

-- 0x70
function LD_HL_B ()
  ldMemory_8b(6, registers[2])
end

-- 0x71
function LD_HL_C ()
  ldMemory_8b(6, registers[3])
end

-- 0x72
function LD_HL_D ()
  ldMemory_8b(6, registers[4])
end

-- 0x73
function LD_HL_E ()
  ldMemory_8b(6, registers[5])
end

-- 0x74
function LD_HL_H ()
  ldMemory_8b(6, registers[6])
end

-- 0x75
function LD_HL_L ()
  ldMemory_8b(6, registers[7])
end

-- 0x36
function LD_HL_n (n)
  ldMemory_8b(6, n)
end

-- 0x0a
function LD_A_BC ()
  ld_8b(1, memory:read_8b(getRegister_16b(2)))
end

-- 0x1a
function LD_A_DE ()
  ld_8b(1, memory:read_8b(getRegister_16b(4)))
end

-- 0xfa
function LD_A_nn (nn)
  ld_8b(1, memory:read_8b(nn))
end

-- 0x3e
function LD_A_n (n)
  ld_8b(1, n)
end

-- 0x47
function LD_B_A ()
  ld_8b(2, registers[1])
end

-- 0x4f
function LD_C_A ()
  ld_8b(3, registers[1])
end

-- 0x57
function LD_D_A ()
  ld_8b(4, registers[1])
end

-- 0x5f
function LD_E_A ()
  ld_8b(5, registers[1])
end

-- 0x67
function LD_H_A ()
  ld_8b(6, registers[1])
end

-- 0x6f
function LD_L_A ()
  ld_8b(7, registers[1])
end

-- 0x02
function LD_BC_A ()
  ldMemory_8b(2, registers[1])
end

-- 0x12
function LD_DE_A ()
  ldMemory_8b(4, registers[1])
end

-- 0x77
function LD_HL_A ()
  ldMemory_8b(6, registers[1])
end

-- 0xea
function LD_nn_A (nn)
  ld_8b(memory:read_8b(nn), registers[1])
end

-- 0xf2
function LD_A_iC ()
  ld_8b(1, memory:read_8b(0xff00 + registers[3]))
end

-- 0xe2
function LD_iC_A ()
  memory:write_8b(0xff00 + registers[3], registers[1])
end

-- 0x3a
function LDD_A_HL ()
  LD_A_HL()
  DEC_HL()
end

-- 0x32
function LDD_HL_A ()
  LD_HL_A()
  DEC_HL()
end

-- 0x2a
function LDI_A_HL ()
  LD_A_HL()
  INC_HL()
end

-- 0x22
function LDI_HL_A ()
  LD_HL_A()
  INC_HL()
end

-- 0xe0
function LDH_in_A (n)
  eAssert("LDH_in_A", n, "n", "number")
  
  memory:write_8b(0xff00 + n, registers[1])
end

-- 0xf0
function LDH_A_in (n)
  eAssert("LDH_A_in", n, "n", "number")

  registers[1] = memory:read_8b(0xff00 + n)
end

-- 16-Bit Loads

function ld_16b (rIndex, nn)
  eAssert("ld_16b", rIndex, "rIndex", "number")
  eAssert("ld_16b", nn, "nn", "number")

  writeRegister_16b(rIndex, rIndex + 1, nn)
end

-- 0x01
function LD_BC_nn (nn)
  ld_16b(2, nn)
end

-- 0x11
function LD_DE_nn (nn)
  ld_16b(4, nn)
end

-- 0x21
function LD_HL_nn (nn)
  ld_16b(6, nn)
end

-- 0x31
function LD_SP_nn (nn)
  eAssert("LD_SP_nn", nn, "nn", "number")

  registers[9] = nn
end

-- 0xf9
function LD_SP_HL ()
  registers[9] = getRegister_16b(6)
end

-- 0xf8
function LDHL_SP_n (n)
  eAssert("LDHL_SP_n", n, "n", "number")

  writeRegister_16b(6, 7, registers[9] + n)
  setFlags(false, false, false, false) -- The documentation on this command's flags is a bit weird
end

-- 0x08
function LD_nn_SP (nn)
  eAssert("LD_nn_SP", nn, "nn", "number")

  memory:write_16b(nn, registers[9])
end

function push (nn)
  eAssert("push", nn, "nn", "number")

  registers[9] = registers[9] - 2
  memory:write_16b(registers[9], nn)
end

-- 0xf5
function PUSH_AF ()
  push(bitsTo_16b(registers[1], registers[8]))
end

-- 0xc5
function PUSH_BC ()
  push(getRegister_16b(2))
end

-- 0xd5
function PUSH_DE ()
  push(getRegister_16b(4))
end

-- 0xe5
function PUSH_HL ()
  push(getRegister_16b(6))
end

function pop (rIndex1, rIndex2)
  eAssert("pop", rIndex1, "rIndex1", "number")
  eAssert("pop", rIndex2, "rIndex2", "number")

  registers[rIndex1] = memory:read_8b(registers[9] + 1)
  registers[rIndex2] = memory:read_8b(registers[9])
  memory:write_16b(registers[9], 0) -- Clear popped memory
  registers[9] = registers[9] + 2
end

-- 0xf1
function POP_AF ()
  pop(1, 8)
end

-- 0xc1
function POP_BC ()
  pop(2, 3)
end

-- 0xd1
function POP_DE ()
  pop(4, 5)
end

-- 0xe1
function POP_HL ()
  pop(6, 7)
end

-- 8-Bit ALU

function add_8b (rIndex, nn)
  eAssert("add_8b", rIndex, "rIndex", "number")
  eAssert("add_8b", nn, "nn", "number")

  sum = registers[rIndex] + nn

  registers[rIndex] = mask_8(sum)
  setFlags(zeroFlag:isZero(sum), false, halfCarryFlag:isHalfCarryAdd_8b(registers[rIndex], nn), carryFlag:isCarryHigh_8b(sum))
end

-- 0x87
function ADD_A_A ()
  add_8b(1, registers[1])
end

-- 0x80
function ADD_A_B ()
  add_8b(1, registers[2])
end

-- 0x81
function ADD_A_C ()
  add_8b(1, registers[3])
end

-- 0x82
function ADD_A_D ()
  add_8b(1, registers[4])
end

-- 0x83
function ADD_A_E ()
  add_8b(1, registers[5])
end

-- 0x84
function ADD_A_H ()
  add_8b(1, registers[6])
end

-- 0x85
function ADD_A_L ()
  add_8b(1, registers[7])
end

-- 0x86
function ADD_A_HL ()
  add_8b(1, memory:read_8b(getRegister_16b(6)))
end

-- 0xc6
function ADD_A_n (n)
  add_8b(1, n)
end

function adc_8b (rIndex, nn)
  eAssert("adc_8b", rIndex, "rIndex", "number")
  eAssert("adc_8b", nn, "nn", "number")

  carry = carryFlag:isSet() and 1 or 0
  add_8b(rIndex, nn + carry)
end

-- 0x8f
function ADC_A_A ()
  adc_8b(1, registers[1])
end

-- 0x88
function ADC_A_B ()
  adc_8b(1, registers[2])
end

-- 0x89
function ADC_A_C ()
  adc_8b(1, registers[3])
end

-- 0x8a
function ADC_A_D ()
  adc_8b(1, registers[4])
end

-- 0x8b
function ADC_A_E ()
  adc_8b(1, registers[5])
end

-- 0x8c
function ADC_A_H ()
  adc_8b(1, registers[6])
end

-- 0x8d
function ADC_A_L ()
  adc_8b(1, registers[7])
end

-- 0x8e
function ADC_A_HL ()
  adc_8b(1, memory:read_8b(getRegister_16b(6)))
end

-- 0xce
function ADC_A_n (n)
  adc_8b(1, n)
end

function sub_8b (rIndex, n)
  eAssert("sub_8b", rIndex, "rIndex", "number")
  eAssert("sub_8b", n, "n", "number")

  diff = registers[rIndex] - n
  registers[rIndex] = diff
  setFlags(zeroFlag:isZero(diff), true, halfCarryFlag:isHalfCarrySub_8b(registers[rIndex], n), carryFlag:isCarryLow(diff))
end

-- 0x97
function SUB_A ()
  sub_8b(1, registers[1])
end

-- 0x90
function SUB_B ()
  sub_8b(1, registers[2])
end

-- 0x91
function SUB_C ()
  sub_8b(1, registers[3])
end

-- 0x92
function SUB_D ()
  sub_8b(1, registers[4])
end

-- 0x93
function SUB_E ()
  sub_8b(1, registers[5])
end

-- 0x94
function SUB_H ()
  sub_8b(1, registers[6])
end

-- 0x95
function SUB_L ()
  sub_8b(1, registers[7])
end

-- 0x96
function SUB_HL ()
  sub_8b(1, memory:read_8b(getRegister_16b(6)))
end

-- 0xd6
function SUB_n (n)
  sub_8b(1, n)
end

function sbc_8b (rIndex, n)
  eAssert("sbc_8b", rIndex, "rIndex", "number")
  eAssert("sbc_8b", n, "n", "number")

  carry = carryFlag:isSet() and 1 or 0
  sub_8b(rIndex, n + carry)
end

-- 0x9f
function SBC_A_A ()
  sbc_8b(1, registers[1])
end

-- 0x98
function SBC_A_B ()
  sbc_8b(1, registers[2])
end

-- 0x99
function SBC_A_C ()
  sbc_8b(1, registers[3])
end

-- 0x9a
function SBC_A_D ()
  sbc_8b(1, registers[4])
end

-- 0x9b
function SBC_A_E ()
  sbc_8b(1, registers[5])
end

-- 0x9c
function SBC_A_H ()
  sbc_8b(1, registers[6])
end

-- 0x9d
function SBC_A_L ()
  sbc_8b(1, registers[7])
end

-- 0x9e
function SBC_A_HL ()
  sbc_8b(1, memory:read_8b(getRegister_16b(6)))
end

-- 0xde
function SBC_A_n (n)
  sbc_8b(1, n)
end

function and_8b (n)
  eAssert("and_8b", n, "n", "number")

  registers[1] = bitwiseAnd_8b(registers[1], n)
  setFlags(zeroFlag:isZero(registers[1]), false, true, false)
end

-- 0xa7
function AND_A ()
  and_8b(registers[1])
end

-- 0xa0
function AND_B ()
  and_8b(registers[2])
end

-- 0xa1
function AND_C ()
  and_8b(registers[3])
end

-- 0xa2
function AND_D ()
  and_8b(registers[4])
end

-- 0xa3
function AND_E ()
  and_8b(registers[5])
end

-- 0xa4
function AND_H ()
  and_8b(registers[6])
end

-- 0xa5
function AND_L ()
  and_8b(registers[7])
end

-- 0xa6
function AND_HL ()
  and_8b(memory:read_8b(getRegister_16b(6)))
end

-- 0xe6
function AND_n (n)
  and_8b(n)
end

function or_8b (n)
  eAssert("or_8b", n, "n", "number")

  registers[1] = bitwiseOr_8b(registers[1], n)
  setFlags(zeroFlag:isZero(registers[1]), false, false, false)
end

-- 0xb7
function OR_A ()
  or_8b(registers[1])
end

-- 0xb0
function OR_B ()
  or_8b(registers[2])
end

-- 0xb1
function OR_C ()
  or_8b(registers[3])
end

-- 0xb2
function OR_D ()
  or_8b(registers[4])
end

-- 0xb3
function OR_E ()
  or_8b(registers[5])
end

-- 0xb4
function OR_H ()
  or_8b(registers[6])
end

-- 0xb5
function OR_L ()
  or_8b(registers[7])
end

-- 0xb6
function OR_HL ()
  or_8b(memory:read_8b(getRegister_16b(6)))
end

-- 0xf6
function OR_n (n)
  or_8b(n)
end

function xor_8b (n)
  eAssert("xor_8b", n, "n", "number")

  registers[1] = bitwiseXor_8b(registers[1], n)
  setFlags(zeroFlag:isZero(registers[1]), false, false, false)
end

-- 0xaf
function XOR_A ()
  xor_8b(registers[1])
end

-- 0xa8
function XOR_B ()
  xor_8b(registers[2])
end

-- 0xa9
function XOR_C ()
  xor_8b(registers[3])
end

-- 0xaa
function XOR_D ()
  xor_8b(registers[4])
end

-- 0xab
function XOR_E ()
  xor_8b(registers[5])
end

-- 0xac
function XOR_H ()
  xor_8b(registers[6])
end

-- 0xad
function XOR_L ()
  xor_8b(registers[7])
end

-- 0xae
function XOR_HL ()
  xor_8b(memory:read_8b(getRegister_16b(6)))
end

-- 0xee
function XOR_n (n)
  xor_8b(n)
end

function cp (n)
  eAssert("cp", n, "n", "number")

  compare = registers[1] - n

  setFlags(zeroFlag:isZero(compare), true, halfCarryFlag:isHalfCarrySub_8b(registers[1], n), (registers[1] < n))
end

-- 0xbf
function CP_A ()
  cp(registers[1])
end

-- 0xb8
function CP_B ()
  cp(registers[2])
end

-- 0xb9
function CP_C ()
  cp(registers[3])
end

-- 0xba
function CP_D ()
  cp(registers[4])
end

-- 0xbb
function CP_E ()
  cp(registers[5])
end

-- 0xbc
function CP_H ()
  cp(registers[6])
end

-- 0xbd
function CP_L ()
  cp(registers[7])
end

-- 0xbe
function CP_HL ()
  cp(memory:read_8b(getRegister_16b(6)))
end

-- 0xfe
function CP_n (n)
  cp(n)
end

function inc_8b (rIndex, store)
  eAssert("inc_8b", rIndex, "rIndex", "number")
  eAssert("inc_8b", store, "store", "boolean")

  startValue = store and registers[rIndex] or memory:read_8b(getRegister_16b(rIndex))
  sum = mask_8b(startValue + 1)

  if store then
    registers[rIndex] = sum
  else
    memory:write_8b(getRegister_16b(rIndex), sum)
  end

  setFlags(zeroFlag:isZero(sum), false, halfCarryFlag:isHalfCarryAdd_8b(sum, 1), nil)
end

-- 0x3c
function INC_A ()
  inc_8b(1, false)
end

-- 0x04
function INC_B ()
  inc_8b(2, false)
end

-- 0x0c
function INC_C ()
  inc_8b(3, false)
end

-- 0x14
function INC_D ()
  inc_8b(4, false)
end

-- 0x1c
function INC_E ()
  inc_8b(5, false)
end

-- 0x24
function INC_H ()
  inc_8b(6, false)
end

-- 0x2c
function INC_L ()
  inc_8b(7, false)
end

-- 0x34
function INC_HL ()
  inc_8b(6, true)
end

function dec_8b (rIndex, store)
  eAssert("dec_8b", rIndex, "rIndex", "number")
  eAssert("dec_8b", store, "store", "boolean")

  startValue = store and registers[rIndex] or memory:read_8b(getRegister_16b(rIndex))
  diff = mask_8b(startValue - 1)

  if n == nil then
    registers[rIndex] = diff
  else
    memory:write_8b(getRegister_16b(rIndex), diff)
  end
  
  setFlags(zeroFlag:isZero(diff), true, halfCarryFlag:isHalfCarrySub_8b(startValue, 1), nil)
end

-- 0x3d
function DEC_A ()
  dec_8b(1, false)
end

-- 0x05
function DEC_B ()
  dec_8b(2, false)
end

-- 0x0d
function DEC_C ()
  dec_8b(3, false)
end

-- 0x15
function DEC_D ()
  dec_8b(4, false)
end

-- 0x1d
function DEC_E ()
  dec_8b(5, false)
end

-- 0x25
function DEC_H ()
  dec_8b(6, false)
end

-- 0x2d
function DEC_L ()
  dec_8b(7, false)
end

-- 0x35
function DEC_HL ()
  dec_8b(6, true)
end

-- 16-Bit Arithmetic

function add_16b (rIndex1, rIndex2, nn)
  eAssert("add_16b", rIndex1, "rIndex1", "number")
  --eAssert("add_16b", rIndex2, "rIndex2", "number") No assertion because this can be nil. This is temporary
  eAssert("add_16b", nn, "nn", "number")

  if rIndex2 ~= nil then
    sum = getRegister_16b(rIndex1) + nn

    writeRegister_16b(rIndex1, rIndex2, mask_16b(sum))
    setFlags(nil, false, halfCarryFlag:isHalfCarryAdd_16b(getRegister_16b(rIndex1), nn), carryFlag:isCarryHigh_16b(sum))
  else
    sum = registers[rIndex1] + nn

    registers[rIndex1] = mask_16b(sum)
    setFlags(false, false, halfCarryFlag:isHalfCarryAdd_16b(shiftRight(registers[rIndex1], 8), toInt(toBits(nn, 8))), carryFlag:isCarryHigh_16b(sum))
  end
end

-- 0x09
function ADD_HL_BC ()
  add_16b(6, 7, getRegister_16b(2))
end

-- 0x19
function ADD_HL_DE ()
  add_16b(6, 7, getRegister_16b(4))
end

-- 0x29
function ADD_HL_HL ()
  add_16b(6, 7, getRegister_16b(6))
end

-- 0x39
function ADD_HL_SP ()
  add_16b(6, 7, registers[9])
end

-- 0xe8
function ADD_SP_n (n)
  add_16b(9, nil, n)
end

function inc_16b (rIndex1, rIndex2)
  eAssert("inc_16b", rIndex1, "rIndex1", "number")
  --eAssert("inc_16b", rIndex2, "rIndex2", "number") No assertion because this can be nil. This is temporary
  --eAssert("inc_16b", nn, "nn", "number") No assertion because this can be nil. This is temporary

  if rIndex2 ~= nil then
    sum = getRegister_16b(rIndex1) + 1

    writeRegister_16b(rIndex1, rIndex2, mask_16b(sum))
  else
    sum = registers[rIndex1] + 1

    registers[8] = mask_16b(sum)
  end
end

-- 0x03
function INC_BC ()
  inc_16b(2, 3)
end

-- 0x13
function INC_DE ()
  inc_16b(4, 5)
end

-- 0x23
function INC_HL ()
  inc_16b(6, 7)
end

-- 0x33
function INC_SP ()
  inc_16b(9, nil)
end

function dec_16b (rIndex1, rIndex2)
  eAssert("dec_16b", rIndex1, "rIndex1", "number")
  --eAssert("dec_16b", rIndex2, "rIndex2", "number") No assertion because this can be nil. This is temporary
  --eAssert("dec_16b", nn, "nn", "number") No assertion because this can be nil. This is temporary

  if rIndex2 ~= nil then
    sum = getRegister_16b(rIndex1) - 1

    writeRegister_16b(rIndex1, rIndex2, mask_16b(sum))
  else
    sum = registers[rIndex1] - 1

    registers[8] = mask_16b(sum)
  end
end

-- 0x0b
function DEC_BC ()
  dec_16b(2, 3)
end

-- 0x1b
function DEC_DE ()
  dec_16b(4, 5)
end

-- 0x2b
function DEC_HL ()
  dec_16b(6, 7)
end

-- 0x3b
function DEC_SP ()
  dec_16b(9, nil)
end

-- Miscellaneous

function swap (rIndex, store)
  eAssert("swap", rIndex, "rIndex", "number")
  eAssert("swap", store, "store", "boolean")

  startValue = store and registers[rIndex] or memory:read_8b(getRegister_16b(rIndex))
  byte = shiftRight(startValue, 4) + (shiftLeft(bitwiseAnd_8b(startValue, 0xf0), 4))

  if not store then
    registers[rIndex] = byte
  else
    memory:write_8b(getRegister_16b(rIndex), byte)
  end

  setFlags(zeroFlag:isZero(byte), false, false, false)
end

-- 0xCB 0x37
function SWAP_A ()
  swap(1, false)
end

-- 0xCB 0x30
function SWAP_B ()
  swap(2, false)
end

-- 0xCB 0x31
function SWAP_C ()
  swap(3, false)
end

-- 0xCB 0x32
function SWAP_D ()
  swap(4, false)
end

-- 0xCB 0x33
function SWAP_E ()
  swap(5, false)
end

-- 0xCB 0x34
function SWAP_H ()
  swap(6, false)
end

-- 0xCB 0x35
function SWAP_L ()
  swap(7, false)
end

-- 0xCB 0x30
function SWAP_HL ()
  swap(6, true)
end

-- 0x27
-- Explanation of command provided from http://stackoverflow.com/questions/8119577/z80-daa-instruction (3rd answer)
function DAA ()
  if bitwiseAnd_8b(registers[1], 0x0f) > 9 or halfCarryFlag:isSet() then
    registers[1] = registers[1] + 0x06
  end

  if shiftRight(registers[1], 4) > 9 or carryFlag:isSet() then
    registers[1] = registers[1] + 0x60
  end
end

-- 0x2f
function CPL ()
  registers[1] = bitwiseNegate_8b(registers[1])
end

-- 0x3f
function CCF ()
  if carryFlag:isSet() then
    setFlags(nil, nil, nil, false)
  else
    setFlags(nil, nil, nil, true)
  end
end

-- 0x37
function SCF ()
  setFlags(nil, nil, nil, true)
end

-- 0x00
function NOP ()
-- NOP does nothing  
end

-- 0x76
function HALT ()
  halt = true
end

-- 0x10
function STOP ()
  stop = true
  lcdDisplay = false
end

-- 0xf3
function DI ()
  ime = false
end

-- 0xfb
function EI ()
  ime = true
end

-- Rotates & Shifts

-- 0x07
function RLCA ()
  shift = shiftLeft(registers[1], 1)

  registers[1] = mask_8b(shift)
  setFlags(zeroFlag:isZero(shift), false, false, carryFlag:rotateLeftCarry(registers[1]))
end

-- 0x17 (THIS COMMAND IS NOT WELL DOCUMENTED)
function RLA ()
  shift = shiftLeft(registers[1], 1)

  registers[1] = mask_8b(shift)
  setFlags(zeroFlag:isZero(shift), false, false, false)
end

-- 0x0f
function RRCA ()
  shift = shiftRight(registers[1], 1)

  setFlags(zeroFlag:isZero(shift), false, false, carryFlag:rotateRightCarry(registers[1]))
  registers[1] = mask_8b(shift)
end

-- 0x1f
function RRA ()
  shift = shiftRight(registers[1], 1)

  registers[1] = mask_8b(shift)
  setFlags(zeroFlag:isZero(shift), false, false, false)
end

function rlc (rIndex, store)
  eAssert("rlc", rIndex, "rIndex", "number")
  eAssert("rlc", store, "store", "boolean")

  startValue = store and registers[rIndex] or memory:read_8b(getRegister_16b(rIndex))
  shift = mask_8(shiftLeft(startValue, 1))

  if not store then
    registers[rIndex] = shift
  else
    memory:write_8b(getRegister_16b(rIndex), shift)
  end

  setFlags(zeroFlag:isZero(shift), false, false, carryFlag:rotateLeftCarry(startValue))
end

-- 0xcb 0x07
function RLC_A ()
  rlc(1, false)
end

-- 0xcb 0x00
function RLC_B ()
  rlc(2, false)
end

-- 0xcb 0x01
function RLC_C ()
  rlc(3, false)
end

-- 0xcb 0x02
function RLC_D ()
  rlc(4, false)
end

-- 0xcb 0x03
function RLC_E ()
  rlc(5, false)
end

-- 0xcb 0x04
function RLC_H ()
  rlc(6, false)
end

-- 0xcb 0x05
function RLC_L ()
  rlc(7, false)
end

-- 0xcb 0x06
function RLC_HL ()
  rlc(6, true)
end

function rl (rIndex, store)
  eAssert("rl", rIndex, "rIndex", "number")
  eAssert("rl", store, "store", "boolean")

  startValue = store and registers[rIndex] or memory:read_8b(getRegister_16b(rIndex))
  shift = mask_8b(shiftLeft(startValue, 1))

  if not store then
    registers[rIndex] = shift
  else
    memory:write_8b(getRegister_16b(rIndex), shift)
  end

  setFlags(zeroFlag:isZero(shift), false, false, false)
end

-- 0xcb 0x17
function RL_A ()
  rl(1, false)
end

-- 0xcb 0x10
function RL_B ()
  rl(2, false)
end

-- 0xcb 0x11
function RL_C ()
  rl(3, false)
end

-- 0xcb 0x12
function RL_D ()
  rl(4, false)
end

-- 0xcb 0x13
function RL_E ()
  rl(5, false)
end

-- 0xcb 0x14
function RL_H ()
  rl(6, false)
end

-- 0xcb 0x15
function RL_L ()
  rl(7, false)
end

-- 0xcb 0x16
function RL_HL ()
  rl(6, true)
end

function rrc (rIndex, store)
  eAssert("rrc", rIndex, "rIndex", "number")
  eAssert("rrc", store, "store", "boolean")

  startValue = store and registers[rIndex] or memory:read_8b(getRegister_16b(rIndex))
  shift = shiftRight(registers[rIndex], 1)

  if not store then
    registers[rIndex] = mask_8b(shift)
  else
    memory:write_8b(getRegister_16b(rIndex), mask_8b(shift))
  end

  setFlags(zeroFlag:isZero(shift), false, false, carryFlag:rotateRightCarry(startValue))
end

-- 0xcb 0x0f
function RRC_A ()
  rrc(1, false)
end

-- 0xcb 0x08
function RRC_B ()
  rrc(2, false)
end

-- 0xcb 0x09
function RRC_C ()
  rrc(3, false)
end

-- 0xcb 0x0a
function RRC_D ()
  rrc(4, false)
end

-- 0xcb 0x0b
function RRC_E ()
  rrc(5, false)
end

-- 0xcb 0x0c
function RRC_H ()
  rrc(6, false)
end

-- 0xcb 0x0d
function RRC_L ()
  rrc(7, false)
end

-- 0xcb 0x0e
function RRC_HL ()
  rrc(6, true)
end

function rr (rIndex, store)
  eAssert("rr", rIndex, "rIndex", "number")
  eAssert("rr", store, "store", "boolean")

  startValue = store and registers[rIndex] or memory:read_8b(getRegister_16b(rIndex))
  shift = mask_8b(shiftRight(startValue, 1))

  if not store then
    registers[rIndex] = shift
  else
    memory:write_8b(getRegister_16b(rIndex), shift)
  end

  setFlags(zeroFlag:isZero(shift), false, false, false)
end

-- 0xcb 0x1f
function RR_A ()
  rr(1, false)
end

-- 0xcb 0x18
function RR_B ()
  rr(2, false)
end

-- 0xcb 0x19
function RR_C ()
  rr(3, false)
end

-- 0xcb 0x1a
function RR_D ()
  rr(4, false)
end

-- 0xcb 0x1b
function RR_E ()
  rr(5, false)
end

-- 0xcb 0x1c
function RR_H ()
  rr(6, false)
end

-- 0xcb 0x1d
function RR_L ()
  rr(7, false)
end

-- 0xcb 0x1e
function RR_HL ()
  rr(6, true)
end

function sla (rIndex, store)
  eAssert("sla", rIndex, "rIndex", "number")
  eAssert("sla", store, "store", "boolean")

  startValue = store and registers[rIndex] or memory:read_8b(getRegister_16b(rIndex))
  shift = mask_8b(shiftLeft(startValue, 1))
  setFlags(zeroFlag:isZero(shift), false, false, carryFlag:rotateLeftCarry(startValue))

  bShift = toBits(shift, 8)
  bShift[8] = 0

  if not store then
    registers[rIndex] = toInt(bShift)
  else
    memory:write_8b(getRegister_16b(rIndex), toInt(bShift))
  end
end

-- 0xcb 0x27
function SLA_A ()
  sla(1, false)
end

-- 0xcb 0x20
function SLA_B ()
  sla(2, false)
end

-- 0xcb 0x21
function SLA_C ()
  sla(3, false)
end

-- 0xcb 0x22
function SLA_D ()
  sla(4, false)
end

-- 0xcb 0x23
function SLA_E ()
  sla(5, false)
end

-- 0xcb 0x24
function SLA_H ()
  sla(6, false)
end

-- 0xcb 0x25
function SLA_L ()
  sla(7, false)
end

-- 0xcb 0x26
function SLA_HL ()
  sla(6, true)
end

function sra (rIndex, store)
  eAssert("sra", rIndex, "rIndex", "number")
  eAssert("sra", store, "store", "boolean")

  startValue = store and registers[rIndex] or memory:read_8b(getRegister_16b(rIndex))
  shift = mask_8b(shiftRight(startValue, 1))
  setFlags(zeroFlag:isZero(shift), false, false, carryFlag:rotateRightCarry(startValue))

  bShift = toBits(shift, 8)
  bShift[8] = 0

  if not store then
    registers[rIndex] = toInt(bShift)
  else
    memory:write_8b(getRegister_16b(rIndex), toInt(bShift))
  end
end

-- 0xcb 0x2f
function SRA_A ()
  sra(1, false)
end

-- 0xcb 0x28
function SRA_B ()
  sra(2, false)
end

-- 0xcb 0x29
function SRA_C ()
  sra(3, false)
end

-- 0xcb 0x2a
function SRA_D ()
  sra(4, false)
end

-- 0xcb 0x2b
function SRA_E ()
  sra(5, false)
end

-- 0xcb 0x2c
function SRA_H ()
  sra(6, false)
end

-- 0xcb 0x2d
function SRA_L ()
  sra(7, false)
end

-- 0xcb 0x2e
function SRA_HL ()
  sra(6, true)
end

function srl (rIndex, store)
  eAssert("srl", rIndex, "rIndex", "number")
  eAssert("srl", store, "store", "boolean")

  startValue = store and registers[rIndex] or memory:read_8b(getRegister_16b(rIndex))
  shift = mask_8b(shiftRight(startValue, 1))
  setFlags(zeroFlag:isZero(shift), false, false, carryFlag:rotateRightCarry(startValue))

  bShift = toBits(shift, 8)
  bShift[8] = 0

  if not store then
    registers[rIndex] = toInt(bShift)
  else
    memory:write_8b(getRegister_16b(rIndex), mask_8b(toInt(bShift)))
  end
end

-- 0xcb 0x3f
function SRL_A ()
  srl(1, false)
end

-- 0xcb 0x38
function SRL_B ()
  srl(2, false)
end

-- 0xcb 0x39
function SRL_C ()
  srl(3, false)
end

-- 0xcb 0x3a
function SRL_D ()
  srl(4, false)
end

-- 0xcb 0x3b
function SRL_E ()
  srl(5, false)
end

-- 0xcb 0x3c
function SRL_H ()
  srl(6, false)
end

-- 0xcb 0x3d
function SRL_L ()
  srl(7, false)
end

-- 0xcb 0x3e
function SRL_HL ()
  srl(6, true)
end

-- Bit Operations

function bit (b, rIndex, store)
  eAssert("bit", b, "b", "number")
  eAssert("bit", rIndex, "rIndex", "number")
  eAssert("bit", store, "store", "boolean")

  startValue = store and registers[rIndex] or memory:read_8b(getRegister_16b(rIndex))
  bits = toBits(startValue, 8)
  setFlags(zeroFlag:isZero(bits[b + 1]), false, true, nil)
end

-- 0xcb 0x47
function BIT_b_A (b)
  bit(b, 1, false)
end

-- 0xcb 0x40
function BIT_b_B (b)
  bit(b, 2, false)
end

-- 0xcb 0x41
function BIT_b_C (b)
  bit(b, 3, false)
end

-- 0xcb 0x42
function BIT_b_D (b)
  bit(b, 4, false)
end
-- 0xcb 0x43
function BIT_b_E (b)
  bit(b, 5, false)
end

-- 0xcb 0x44
function BIT_b_H (b)
  bit(b, 6, false)
end

-- 0xcb 0x45
function BIT_b_L (b)
  bit(b, 7, false)
end

-- 0xcb 0x46
function BIT_b_HL (b)
  bit(b, 6, true)
end

function set (b, rIndex, store)
  eAssert("set", b, "b", "number")
  eAssert("set", rIndex, "rIndex", "number")
  eAssert("set", store, "store", "boolean")

  startValue = store and registers[rIndex] or memory:read_8b(getRegister_16b(rIndex))
  bits = toBits(startValue, 8)
  bits[b + 1] = 1 

  if not store then
    registers[rIndex] = toInt(bits)
  else
    memory:write_8b(getRegister_16b(rIndex), toInt(bits))
  end
end

-- 0xcb 0xc7
function SET_b_A (b)
  set(b, 1, false)
end

-- 0xcb 0xc0
function SET_b_B (b)
  set(b, 2, false)
end

-- 0xcb 0xc1
function SET_b_C (b)
  set(b, 3, false)
end

-- 0xcb 0xc2
function SET_b_D (b)
  set(b, 4, false)
end

-- 0xcb 0xc3
function SET_b_E (b)
  set(b, 5, false)
end

-- 0xcb 0xc4
function SET_b_H (b)
  set(b, 6, false)
end

-- 0xcb 0xc5
function SET_b_L (b)
  set(b, 7, false)
end

-- 0xcb 0xc6
function SET_b_HL (b)
  set(b, 6, true)
end

function res (b, rIndex, store)
  eAssert("res", b, "b", "number")
  eAssert("res", rIndex, "rIndex", "number")
  eAssert("res", store, "store", "boolean")

  startValue = store and registers[rIndex] or memory:read_8b(getRegister_16b(rIndex))
  bits = toBits(startValue, 8)
  bits[b + 1] = 0

  if not store then
    registers[rIndex] = toInt(bits)
  else
    memory:write_8b(getRegister_16b(rIndex), toInt(bits))
  end
end

-- 0xcb 0x87
function RES_b_A (b)
  res(b, 1, false)
end

-- 0xcb 0x80
function RES_b_B (b)
  res(b, 2, false)
end

-- 0xcb 0x81
function RES_b_C (b)
  res(b, 3, false)
end

-- 0xcb 0x82
function RES_b_D (b)
  res(b, 4, false)
end

-- 0xcb 0x83
function RES_b_E (b)
  res(b, 5, false)
end

-- 0xcb 0x84
function RES_b_H (b)
  res(b, 6, false)
end

-- 0xcb 0x85
function RES_b_L (b)
  res(b, 7, false)
end

-- 0xcb 0x86
function RES_b_HL (b)
  res(b, 6, true)
end

-- Jumps

function jp (cc, nn, tByte)
  --eAssert("jp", cc, "cc", "string") cc can be nil
  eAssert("jp", nn, "nn", "number")

  tByte = tByte or false -- JP and CALL have two byte args
  eAssert("jp", tByte, "tByte", "boolean")
  
  location = nn + 1

  if cc == nil then
    pc = location
		return
  else
    if cc == "NZ" then
      if not zeroFlag:isSet() then
        pc = location
				return
      end
    elseif cc == "Z" then
      if zeroFlag:isSet() then
        pc = location
				return
      end
    elseif cc == "NC" then
      if not carryFlag:isSet() then
        pc = location
				return
      end
    else
      if carryFlag:isSet() then
        pc = location
				return
      end
    end
  end

  if tByte then
    pc = pc + 2
  else
    pc = pc + 1
  end
end

-- 0xc3
function JP_nn (nn)
  jp(nil, nn, true)
end

-- 0xc2
function JP_NZ_nn (nn)
  jp("NZ", nn, true)
end

-- 0xca
function JP_Z_nn (nn)
  jp("Z", nn, true)
end

-- 0xd2
function JP_NC_nn (nn)
  jp("NC", nn, true)
end

-- 0xda
function JP_C_nn (nn)
  jp("C", nn, true)
end

-- 0xe9
function JP_HL ()
  jp(nil, memory:read_8b(getRegister_16b(6)), true)
end

function jr (cc, n)
  eAssert("jr", n, "n", "number")
  jumpTo = pc + n
  jp(cc, jumpTo)
end

-- 0x18
function JR_n (n)
  jr(nil, n)
end

-- 0x20
function JR_NZ_n (n)
  jr("NZ", n)
end

-- 0x28
function JR_Z_n (n)
  jr("Z", n)
end

-- 0x30
function JR_NC_n (n)
  jr("NC", n)
end

-- 0x38
function JR_C_n (n)
  jr("C", n)
end

-- Calls

function call (cc, nn)
  eAssert("call", nn, "nn", "number")
  push(pc)

  jp(cc, nn, true)
end

-- 0xcd
function CALL_nn (nn)
  call(nil, nn)
end

-- 0xc4
function CALL_NZ_nn (nn)
  call("NZ", nn)
end

-- 0xcc
function CALL_Z_nn (nn)
  call("Z", nn)
end

-- 0xd4
function CALL_NC_nn (nn)
  call("NC", nn)
end

-- 0xdc
function CALL_C_nn (nn)
  call("C", nn)
end

-- Restarts

function rst (n)
  eAssert("rst", n, "n", "number")
  push(pc)

  jp(nil, n)
end

-- 0xc7
function RST_00H ()
  rst(0x00)
end

-- 0xcf
function RST_08H ()
  rst(0x08)
end

-- 0xd7
function RST_10H ()
  rst(0x10)
end

-- 0xdf
function RST_18H ()
  rst(0x18)
end

-- 0xe7
function RST_20H ()
  rst(0x20)
end

-- 0xef
function RST_28H ()
  rst(0x28)
end

-- 0xf7
function RST_30H ()
  rst(0x30)
end

-- 0xff
function RST_38H ()
  rst(0x38)
end

-- Returns

function ret (cc)
  address = memory:read_16b(registers[9])

  registers[9] = registers[9] + 2

  jp(cc, address)
end

-- 0xc9
function RET ()
  ret(nil)
end

-- 0xc0
function RET_NZ ()
  ret("NZ")
end

-- 0xc8
function RET_Z ()
  ret("Z")
end

-- 0xd0
function RET_NC ()
  ret("NC")
end

-- 0xd8
function RET_C ()
  ret("C")
end

-- 0xd9
function RETI ()
  ret(nil)
  EI()
end
