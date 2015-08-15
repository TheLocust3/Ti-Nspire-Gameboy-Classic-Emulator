command = ""

function log (str)
  command = str

  lowerCommand = string.lower(command)
  if lowerCommand:find(stopOn) ~= nil then
    stop = true
  end

  print(str)
end

-- The pc - 1 gets a + 1 when going through the read method
function dispatcher ()
  log(toHex(pc - 1) .. ": ")
  pcHex = toHex(pc - 1)

  if memory:read_8b(pc - 1) == 0x06 then
    c = 8
    LD_B_n(memory:read_8b(pc))
    log("LD B, " .. toHex(memory:read_8b(pc)))
    pc = pc + 2
  elseif memory:read_8b(pc - 1) == 0x0e then
    c = 8
    LD_C_n(memory:read_8b(pc))
    log("LD C, " .. toHex(memory:read_8b(pc)))
    pc = pc + 2
  elseif memory:read_8b(pc - 1) == 0x16 then
    c = 8
    LD_D_n(memory:read_8b(pc))
    log("LD D, " .. toHex(memory:read_8b(pc)))
    pc = pc + 2
  elseif memory:read_8b(pc - 1) == 0x1e then
    c = 8
    LD_E_n(memory:read_8b(pc))
    log("LD E, " .. toHex(memory:read_8b(pc)))
    pc = pc + 2
  elseif memory:read_8b(pc - 1) == 0x26 then
    c = 8
    LD_H_n(memory:read_8b(pc))
    log("LD H, " .. toHex(memory:read_8b(pc)))
    pc = pc + 2
  elseif memory:read_8b(pc - 1) == 0x2e then
    c = 8
    LD_L_n(memory:read_8b(pc))
    log("LD L, " .. toHex(memory:read_8b(pc)))
    pc = pc + 2
  elseif memory:read_8b(pc - 1) == 0x7f then
    c = 4
    LD_A_A()
    log("LD A, A")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x78 then
    c = 4
    LD_A_B()
    log("LD A, B")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x79 then
    c = 4
    LD_A_C()
    log("LD A, C")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x7a then
    c = 4
    LD_A_D()
    log("LD A, D")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x7b then
    c = 4
    LD_A_E()
    log("LD A, E")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x7c then
    c = 4
    LD_A_H()
    log("LD A, H")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x7d then
    c = 4
    LD_A_L()
    log("LD A, L")
    pc = pc +1
  elseif memory:read_8b(pc - 1) == 0x7e then
    c = 8
    LD_A_HL()
    log("LD A, (HL)")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x40 then
    c = 4
    LD_B_B()
    log("LD B, B")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x41 then
    c = 4
    LD_B_C()
    log("LD B, C")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x42 then
    c = 4
    LD_B_D()
    log("LD B, D")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x43 then
    c = 4
    LD_B_E()
    log("LD B, E")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x44 then
    c = 4
    LD_B_H()
    log("LD B, H")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x45 then
    c = 4
    LD_B_L()
    log("LD B, L")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x46 then
    c = 8
    LD_B_HL()
    log("LD B, (HL)")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x48 then
    c = 4
    LD_C_B()
    log("LD C, B")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x49 then
    c = 4
    LD_C_C()
    log("LD C, C")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x4a then
    c = 4
    LD_C_D()
    log("LD C, D")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x4b then
    c = 4
    LD_C_E()
    log("LD C, E")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x4c then
    c = 4
    LD_C_H()
    log("LD C, H")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x4d then
    c = 4
    LD_C_L()
    log("LD C, L")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x4e then
    c = 8
    LD_C_HL()
    log("LD C, (HL)")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x50 then
    c = 4
    LD_D_B()
    log("LD D, B")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x51 then
    c = 4
    LD_D_C()
    log("LD D, C")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x52 then
    c = 4
    LD_D_D()
    log("LD D, D")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x53 then
    c = 4
    LD_D_E()
    log("LD D, E")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x54 then
    c = 4
    LD_D_H()
    log("LD D, H")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x55 then
    c = 4
    LD_D_L()
    log("LD D, L")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x56 then
    c = 8
    LD_D_HL()
    log("LD D, (HL)")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x58 then
    c = 4
    LD_E_B()
    log("LD E, B")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x59 then
    c = 4
    LD_E_C()
    log("LD E, C")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x5a then
    c = 4
    LD_E_D()
    log("LD E, D")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x5b then
    c = 4
    LD_E_E()
    log("LD E, E")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x5c then
    c = 4
    LD_E_H()
    log("LD E, H")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x5d then
    c = 4
    LD_E_L()
    log("LD E, L")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x5e then
    c = 8
    LD_E_HL()
    log("LD E, (HL)")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x60 then
    c = 4
    LD_H_B()
    log("LD H, B")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x61 then
    c = 4
    LD_H_C()
    log("LD H, C")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x62 then
    c = 4
    LD_H_D()
    log("LD H, D")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x63 then
    c = 4
    LD_H_E()
    log("LD H, E")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x64 then
    c = 4
    LD_H_H()
    log("LD H, H")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x65 then
    c = 4
    LD_H_L()
    log("LD H, L")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x66 then
    c = 8
    LD_H_HL()
    log("LD H, (HL)")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x68 then
    c = 4
    LD_L_B()
    log("LD L, B")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x69 then
    c = 4
    LD_L_C()
    log("LD L, C")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x6a then
    c = 4
    LD_L_D()
    log("LD L, D")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x6b then
    c = 4
    LD_L_E()
    log("LD L, E")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x6c then
    c = 4
    LD_L_H()
    log("LD L, H")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x6d then
    c = 4
    LD_L_L()
    log("LD L, L")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x6e then
    c = 8
    LD_L_HL()
    log("LD L, (HL)")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x70 then
    c = 8
    LD_HL_B()
    log("LD (HL), B")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x71 then
    c = 8
    LD_HL_C()
    log("LD (HL), C")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x72 then
    c = 8
    LD_HL_D()
    log("LD (HL), D")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x73 then
    c = 8
    LD_HL_E()
    log("LD (HL), E")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x74 then
    c = 8
    LD_HL_H()
    log("LD (HL), H")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x75 then
    c = 8
    LD_HL_L()
    log("LD (HL), L")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x36 then
    c = 12
    LD_HL_n(memory:read_8b(pc))
    log("LD (HL), " .. toHex(memory:read_8b(pc)))
    pc = pc + 2
  elseif memory:read_8b(pc - 1) == 0x0a then
    c = 8
    LD_A_BC()
    log("LD A, (BC)")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x1a then
    c = 8
    LD_A_DE()
    log("LD A, (DE)")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x7e then
    c = 8
    LD_A_HL()
    log("LD A, (HL)")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0xfa then
    c = 16
    LD_A_nn(to16n(memory:read_8b(pc), memory:read_8b(pc + 1)))
    log("LD A, " .. toHex(memory:read_8b(pc)) .. u_toHex(pc + 1))
    pc = pc + 3
  elseif memory:read_8b(pc - 1) == 0x3e then
    c = 8
    LD_A_n(memory:read_8b(pc))
    log("LD A, " .. toHex(memory:read_8b(pc)))
    pc = pc + 2
  elseif memory:read_8b(pc - 1) == 0x47 then
    c = 4
    LD_B_A()
    log("LD B, A")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x4f then
    c = 4
    LD_C_A()
    log("LD C, A")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x57 then
    c = 4
    LD_D_A()
    log("LD D, A")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x5f then
    c = 4
    LD_E_A()
    log("LD E, A")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x67 then
    c = 4
    LD_H_A()
    log("LD H, A")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x6f then
    c = 4
    LD_L_A()
    log("LD L, A")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x02 then
    c = 8
    LD_BC_A()
    log("LD (BC), A")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x12 then
    c = 8
    LD_DE_A()
    log("LD (DE), A")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x77 then
    c = 8
    LD_HL_A()
    log("LD (HL), A")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0xea then
    c = 16
    LD_nn_A(to16b(memory:read_8b(pc), memory:read_8b(pc + 1)))
    log("LD (" .. toHex(memory:read_8b(pc)) .. "" .. u_toHex(pc + 1) .. "), A")
    pc = pc + 3
  elseif memory:read_8b(pc - 1) == 0xf2 then
    c = 8
    LD_A_iC()
    log("LD A, (C)")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0xe2 then
    c = 8
    LD_iC_A()
    log("LD ($FF00 .. C), A")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x3a then
    c = 8
    LDD_A_HL()
    log("LD A, (HLD) or LD A, (HL-) or LDD A, (HL)")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x32 then
    c = 8
    LDD_HL_A()
    log("LD (HLD), A or LD (HL-), A or LDD (HL), A")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x2a then
    c = 8
    LDI_A_HL()
    log("LD A, (HLI) or LD A, (HL..) or LDI A, (HL)")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x22 then
    c = 8
    LDI_HL_A()
    log("LD (HLI), LD A or LD (HL..), LDI A or (HL), A")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0xe0 then
    c = 12
    LDH_in_A(memory:read_8b(pc))
    log("LDH ($FF00 + " .. toHex(memory:read_8b(pc)) .. "), A")
    pc = pc + 2
  elseif memory:read_8b(pc - 1) == 0xf0 then
    c = 12
    LDH_A_in(memory:read_8b(pc))
    log("LDH A, ($FF00 + " .. toHex(memory:read_8b(pc)) .. ")")
    pc = pc + 2
  elseif memory:read_8b(pc - 1) == 0x01 then
    c = 12
    LD_BC_nn(to16b(memory:read_8b(pc), memory:read_8b(pc + 1)))
    log("LD BC, " .. toHex(memory:read_8b(pc)) .. u_toHex(pc + 1))
    pc = pc + 3
  elseif memory:read_8b(pc - 1) == 0x11 then
    c = 12
    LD_DE_nn(to16b(memory:read_8b(pc), memory:read_8b(pc + 1)))
    log("LD DE, " .. toHex(memory:read_8b(pc)) .. u_toHex(pc + 1))
    pc = pc + 3
  elseif memory:read_8b(pc - 1) == 0x21 then
    c = 12
    LD_HL_nn(to16b(memory:read_8b(pc), memory:read_8b(pc + 1)))
    log("LD HL, " .. toHex(to16b(memory:read_8b(pc), memory:read_8b(pc + 1))))
    pc = pc + 3
  elseif memory:read_8b(pc - 1) == 0x31 then
    c = 12
    LD_SP_nn(to16b(memory:read_8b(pc), memory:read_8b(pc + 1)))
    log("LD SP, " .. toHex(to16b(memory:read_8b(pc), memory:read_8b(pc + 1))))
    pc = pc + 3
  elseif memory:read_8b(pc - 1) == 0xf9 then
    c = 8
    LD_SP_HL()
    log("LD SP, HL")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0xf8 then
    c = 12
    LDHL_SP_n(memory:read_8b(pc))
    log("LDHL SP, " .. toHex(memory:read_8b(pc)) .. " or LD HL, SP .. " .. toHex(memory:read_8b(pc)))
    pc = pc + 2
  elseif memory:read_8b(pc - 1) == 0x08 then
    c = 20
    LD_nn_SP(to16b(memory:read_8b(pc), memory:read_8b(pc + 1)))
    log("LD " .. toHex(memory:read_8b(pc)) .. u_toHex(pc + 1) .. ", SP")
    pc = pc + 3
  elseif memory:read_8b(pc - 1) == 0xf5 then
    c = 16
    PUSH_AF()
    log("PUSH AF")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0xc5 then
    c = 16
    PUSH_BC()
    log("PUSH BC")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0xd5 then
    c = 16
    PUSH_DE()
    log("PUSH DE")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0xe5 then
    c = 16
    PUSH_HL()
    log("PUSH HL")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0xf1 then
    c = 12
    POP_AF()
    log("POP AF")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0xc1 then
    c = 12
    POP_BC()
    log("POP BC")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0xd1 then
    c = 12
    POP_DE()
    log("POP DE")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0xe1 then
    c = 12
    POP_HL()
    log("POP HL")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x87 then
    c = 4
    ADD_A_A()
    log("ADD A, A")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x80 then
    c = 4
    ADD_A_B()
    log("ADD A, B")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x81 then
    c = 4
    ADD_A_C()
    log("ADD A, C")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x82 then
    c = 4
    ADD_A_D()
    log("ADD A, D")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x83 then
    c = 4
    ADD_A_E()
    log("ADD A, E")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x84 then
    c = 4
    ADD_A_H()
    log("ADD A, H")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x85 then
    c = 4
    ADD_A_L()
    log("ADD A, L")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x86 then
    c = 8
    ADD_A_HL()
    log("ADD A, (HL)")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0xc6 then
    c = 8
    ADD_A_n(memory:read_8b(pc))
    log("ADD A, " .. toHex(memory:read_8b(pc)))
    pc = pc + 2
  elseif memory:read_8b(pc - 1) == 0x8f then
    c = 4
    ADC_A_A()
    log("ADC A, A")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x88 then
    c = 4
    ADC_A_B()
    log("ADC A, B")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x89 then
    c = 4
    ADC_A_C()
    log("ADC A, C")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x8a then
    c = 4
    ADC_A_D()
    log("ADC A, D")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x8b then
    c = 4
    ADC_A_E()
    log("ADC A, E")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x8c then
    c = 4
    ADC_A_H()
    log("ADC A, H")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x8d then
    c = 4
    ADC_A_L()
    log("ADC A, L")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x8e then
    c = 8
    ADC_A_HL()
    log("ADC A, (HL)")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0xce then
    c = 8
    ADC_A_n(memory:read_8b(pc))
    log("ADC A, " .. toHex(memory:read_8b(pc)))
    pc = pc + 2
  elseif memory:read_8b(pc - 1) == 0x97 then
    c = 4
    SUB_A()
    log("SUB A, A")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x90 then
    c = 4
    SUB_B()
    log("SUB A, B")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x91 then
    c = 4
    SUB_C()
    log("SUB A, C")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x92 then
    c = 4
    SUB_D()
    log("SUB A, D")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x93 then
    c = 4
    SUB_E()
    log("SUB A, E")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x94 then
    c = 4
    SUB_H()
    log("SUB A, H")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x95 then
    c = 4
    SUB_L()
    log("SUB A, L")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x96 then
    c = 8
    SUB_HL()
    log("SUB A, (HL)")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0xd6 then
    c = 8
    SUB_n(memory:read_8b(pc))
    log("SUB A, " .. toHex(memory:read_8b(pc)))
    pc = pc + 2
  elseif memory:read_8b(pc - 1) == 0x9f then
    c = 4
    SBC_A_A()
    log("SBC A, A")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x98 then
    c = 4
    SBC_A_B()
    log("SBC A, B")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x99 then
    c = 4
    SBC_A_C()
    log("SBC A, C")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x9a then
    c = 4
    SBC_A_D()
    log("SBC A, D")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x9b then
    c = 4
    SBC_A_E()
    log("SBC A, E")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x9c then
    c = 4
    SBC_A_H()
    log("SBC A, H")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x9d then
    c = 4
    SBC_A_L()
    log("SBC A, L")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x9e then
    c = 8
    SBC_A_HL()
    log("SBC A, (HL)")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0xde then
    c = 8
    SBC_A_n(memory:read_8b(pc))
    log("SBC A, " .. toHex(memory:read_8b(pc)))
    pc = pc + 2
  elseif memory:read_8b(pc - 1) == 0xa7 then
    c = 4
    AND_A()
    log("AND A")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0xa0 then
    c = 4
    AND_B()
    log("AND B")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0xa1 then
    c = 4
    AND_C()
    log("AND C")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0xa2 then
    c = 4
    AND_D()
    log("AND D")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0xa3 then
    c = 4
    AND_E()
    log("AND E")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0xa4 then
    c = 4
    AND_H()
    log("AND H")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0xa5 then
    c = 4
    AND_L()
    log("AND L")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0xa6 then
    c = 8
    AND_HL()
    log("AND (HL)")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0xe6 then
    c = 8
    AND_n(memory:read_8b(pc))
    log("AND " .. toHex(memory:read_8b(pc)))
    pc = pc + 2
  elseif memory:read_8b(pc - 1) == 0xb7 then
    c = 4
    OR_A()
    log("OR A")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0xb0 then
    c = 4
    OR_B()
    log("OR B")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0xb1 then
    c = 4
    OR_C()
    log("OR C")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0xb2 then
    c = 4
    OR_D()
    log("OR D")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0xb3 then
    c = 4
    OR_E()
    log("OR E")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0xb4 then
    c = 4
    OR_H()
    log("OR H")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0xb5 then
    c = 4
    OR_L()
    log("OR L")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0xb6 then
    c = 8
    OR_HL()
    log("OR (HL)")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0xf6 then
    c = 8
    OR_n(memory:read_8b(pc))
    log("OR " .. toHex(memory:read_8b(pc)))
    pc = pc + 2
  elseif memory:read_8b(pc - 1) == 0xaf then
    c = 4
    XOR_A()
    log("XOR A")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0xa8 then
    c = 4
    XOR_B()
    log("XOR B")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0xa9 then
    c = 4
    XOR_C()
    log("XOR C")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0xaa then
    c = 4
    XOR_D()
    log("XOR D")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0xab then
    c = 4
    XOR_E()
    log("XOR E")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0xac then
    c = 4
    XOR_H()
    log("XOR H")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0xad then
    c = 4
    XOR_L()
    log("XOR L")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0xea then
    c = 8
    XOR_HL()
    log("XOR (HL)")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0xee then
    c = 8
    XOR_n(memory:read_8b(pc))
    log("XOR " .. toHex(memory:read_8b(pc)))
    pc = pc + 2
  elseif memory:read_8b(pc - 1) == 0xbf then
    c = 4
    CP_A()
    log("CP A")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0xb8 then
    c = 4
    CP_B()
    log("CP B")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0xb9 then
    c = 4
    CP_C()
    log("CP C")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0xba then
    c = 4
    CP_D()
    log("CP D")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0xbb then
    c = 4
    CP_E()
    log("CP E")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0xbc then
    c = 4
    CP_H()
    log("CP H")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0xbd then
    c = 4
    CP_L()
    log("CP L")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0xbe then
    c = 8
    CP_HL()
    log("CP (HL)")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0xfe then
    c = 8
    CP_n(memory:read_8b(pc))
    log("CP " .. toHex(memory:read_8b(pc)))
    pc = pc + 2
  elseif memory:read_8b(pc - 1) == 0x3c then
    c = 4
    INC_A()
    log("INC A")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x04 then
    c = 4
    INC_B()
    log("INC B")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x0c then
    c = 4
    INC_C()
    log("INC C")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x14 then
    c = 4
    INC_D()
    log("INC D")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x1c then
    c = 4
    INC_E()
    log("INC E")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x24 then
    c = 4
    INC_H()
    log("INC H")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x2c then
    c = 4
    INC_L()
    log("INC L")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x34 then
    c = 12
    INC_HL()
    log("INC (HL)")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x3d then
    c = 4
    DEC_A()
    log("DEC A")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x05 then
    c = 4
    DEC_B()
    log("DEC B")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x0d then
    c = 4
    DEC_C()
    log("DEC C")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x15 then
    c = 4
    DEC_D()
    log("DEC D")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x1d then
    c = 4
    DEC_E()
    log("DEC E")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x25 then
    c = 4
    DEC_H()
    log("DEC H")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x2d then
    c = 4
    DEC_L()
    log("DEC L")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x35 then
    c = 12
    DEC_HL()
    log("DEC (HL)")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x09 then
    c = 8
    ADD_HL_BC()
    log("ADD HL, BC")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x19 then
    c = 8
    ADD_HL_DE()
    log("ADD HL, DE")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x29 then
    c = 8
    ADD_HL_HL()
    log("ADD HL, HL")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x39 then
    c = 8
    ADD_HL_SP()
    log("ADD HL, SP")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0xe8 then
    c = 16
    ADD_SP_n(memory:read_8b(pc))
    log("ADD SP, " .. toHex(pc))
    pc = pc + 2
  elseif memory:read_8b(pc - 1) == 0x03 then
    c = 8
    INC_BC()
    log("INC BC")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x13 then
    c = 8
    INC_DE()
    log("INC DE")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x23 then
    c = 8
    INC_HL()
    log("INC HL")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x33 then
    c = 8
    INC_SP()
    log("INC SP")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x0b then
    c = 8
    DEC_BC()
    log("DEC BC")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x1b then
    c = 8
    DEC_DE()
    log("DEC DE")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x2b then
    c = 8
    DEC_HL()
    log("DEC HL")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x3b then
    c = 8
    DEC_SP()
    log("DEC SP")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x27 then
    c = 4
    DAA()
    log("DAA")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x2f then
    c = 4
    CPL()
    log("CPL")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x3f then
    c = 4
    CCF()
    log("CCF")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x37 then
    c = 4
    SCF()
    log("SCF")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x00 then
    c = 4
    NOP()
    log("NOP")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x76 then
    c = 4
    HALT()
    log("HALT")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x10 then
    c = 4
    STOP()
    log("STOP")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0xf3 then
    c = 4
    DI()
    log("DI")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0xfb then
    c = 4
    EI()
    log("EI")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x07 then
    c = 4
    RLCA()
    log("RLCA")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x17 then
    c = 4
    RLA()
    log("RLA")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x0f then
    c = 4
    RRCA()
    log("RRCA")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0x1f then
    c = 4
    RRA()
    log("RRA")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0xc3 then
    c = 12
    log("JP " .. toHex(to16b(memory:read_8b(pc), memory:read_8b(pc + 1))))
    JP_nn(to16b(memory:read_8b(pc), memory:read_8b(pc + 1)))
  elseif memory:read_8b(pc - 1) == 0xc2 then
    c = 12
    log("JP NZ, " .. toHex(to16b(memory:read_8b(pc), memory:read_8b(pc + 1))))
    JP_NZ_nn(to16b(memory:read_8b(pc), memory:read_8b(pc + 1)))
  elseif memory:read_8b(pc - 1) == 0xca then
    c = 12
    log("JP Z" .. toHex(to16b(memory:read_8b(pc), memory:read_8b(pc + 1))))
    JP_Z_nn(to16b(memory:read_8b(pc), memory:read_8b(pc + 1)))
  elseif memory:read_8b(pc - 1) == 0xd2 then
    c = 12
    log("JP  NC" .. toHex(to16b(memory:read_8b(pc), memory:read_8b(pc + 1))))
    JP_NC_nn(to16b(memory:read_8b(pc), memory:read_8b(pc + 1)))
  elseif memory:read_8b(pc - 1) == 0xda then
    c = 12
    log("JP  C" .. toHex(to16b(memory:read_8b(pc), memory:read_8b(pc + 1))))
    JP_C_nn(to16b(memory:read_8b(pc), memory:read_8b(pc + 1)))
  elseif memory:read_8b(pc - 1) == 0xe9 then
    c = 4
    log("JP (HL)")
    JP_HL(to16b(memory:read_8b(pc), memory:read_8b(pc + 1)))
  elseif memory:read_8b(pc - 1) == 0x18 then
    c = 8
    log("JR " .. toHex(memory:read_8b(pc)))
    JR_n(memory:read_8b(pc))
  elseif memory:read_8b(pc - 1) == 0x20 then
    c = 8
    log("JR NZ, " .. toHex(memory:read_8b(pc)))
    JR_NZ_n(memory:read_8b(pc))
  elseif memory:read_8b(pc - 1) == 0x28 then
    c = 8
    log("JR Z, " .. toHex(memory:read_8b(pc)))
    JR_Z_n(memory:read_8b(pc))
  elseif memory:read_8b(pc - 1) == 0x30 then
    c = 8
    log("JR NC, " .. toHex(memory:read_8b(pc)))
    JR_NC_n(memory:read_8b(pc))
  elseif memory:read_8b(pc - 1) == 0x38 then
    c = 8
    log("JR C, " .. toHex(memory:read_8b(pc)))
    JR_C_n(memory:read_8b(pc))
  elseif memory:read_8b(pc - 1) == 0xcd then
    c = 12
    log("CALL " .. toHex(to16b(memory:read_8b(pc), memory:read_8b(pc + 1))))
    CALL_nn(to16b(memory:read_8b(pc), memory:read_8b(pc + 1)))
  elseif memory:read_8b(pc - 1) == 0xc4 then
    c = 12
    log("CALL NZ, " .. toHex(to16b(memory:read_8b(pc), memory:read_8b(pc + 1))))
    CALL_NZ_nn(to16b(memory:read_8b(pc), memory:read_8b(pc + 1)))
  elseif memory:read_8b(pc - 1) == 0xcc then
    c = 12
    log("CALL Z, " .. toHex(to16b(memory:read_8b(pc), memory:read_8b(pc + 1))))
    CALL_Z_nn(to16b(memory:read_8b(pc), memory:read_8b(pc + 1)))
  elseif memory:read_8b(pc - 1) == 0xd4 then
    c = 12
    log("CALL NC, " .. toHex(to16b(memory:read_8b(pc), memory:read_8b(pc + 1))))
    CALL_NC_nn(to16b(memory:read_8b(pc), memory:read_8b(pc + 1)))
  elseif memory:read_8b(pc - 1) == 0xdc then
    c = 12
    log("CALL C, " .. toHex(to16b(memory:read_8b(pc), memory:read_8b(pc + 1))))
    CALL_C_nn(to16b(memory:read_8b(pc), memory:read_8b(pc + 1)))
  elseif memory:read_8b(pc - 1) == 0xc7 then
    c = 32
    RST_00H()
    log("RST 00H")
  elseif memory:read_8b(pc - 1) == 0xcf then
    c = 32
    log("RST 08H")
    RST_08H()
  elseif memory:read_8b(pc - 1) == 0xd7 then
    c = 32
    log("RST 10H")
    RST_10H()
  elseif memory:read_8b(pc - 1) == 0xdf then
    c = 32
    log("RST 18H")
    RST_18H()
  elseif memory:read_8b(pc - 1) == 0xe7 then
    c = 32
    log("RST 20H")
    RST_20H()
  elseif memory:read_8b(pc - 1) == 0xef then
    c = 32
    log("RST 28H")
    RST_28H()
  elseif memory:read_8b(pc - 1) == 0xf7 then
    c = 32
    log("RST 30H")
    RST_30H()
  elseif memory:read_8b(pc - 1) == 0xff then
    c = 32
    log("RST 38H")
    RST_38H()
  elseif memory:read_8b(pc - 1) == 0xc9 then
    c = 8
    log("RET")
    RET()
  elseif memory:read_8b(pc - 1) == 0xc0 then
    c = 8
    log("RET NZ")
    RET_NZ()
  elseif memory:read_8b(pc - 1) == 0xc8 then
    c = 8
    log("RET Z")
    RET_Z()
  elseif memory:read_8b(pc - 1) == 0xd0 then
    c = 8
    log("RET NC")
    RET_NC()
  elseif memory:read_8b(pc - 1) == 0xd8 then
    c = 8
    log("RET C")
    RET_C()
  elseif memory:read_8b(pc - 1) == 0xd9 then
    c = 8
    log("RETI")
    RETI()
  elseif memory:read_8b(pc - 1) == 0xfc then
    log("0xfc in an undocumented opcode and should not be used!")
    pc = pc + 1
  elseif memory:read_8b(pc - 1) == 0xcb then
    if memory:read_8b(pc) == 0x37 then
      c = 8
      SWAP_A()
      log("SWAP A")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x30 then
      c = 8
      SWAP_B()
      log("SWAP B")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x31 then
      c = 8
      SWAP_C()
      log("SWAP C")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x32 then
      c = 8
      SWAP_D()
      log("SWAP D")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x33 then
      c = 8
      SWAP_E()
      log("SWAP E")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x34 then
      c = 8
      SWAP_H()
      log("SWAP H")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x35 then
      c = 8
      SWAP_L()
      log("SWAP L")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x36 then
      c = 16
      SWAP_HL()
      log("SWAP (HL)")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x07 then
      c = 8
      RLC_A()
      log("RLC A")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x00 then
      c = 8
      RLC_B()
      log("RLC B")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x01 then
      c = 8
      RLC_C()
      log("RLC C")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x02 then
      c = 8
      RLC_D()
      log("RLC D")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x03 then
      c = 8
      RLC_E()
      log("RLC E")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x04 then
      c = 8
      RLC_H()
      log("RLC H")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x05 then
      c = 8
      RLC_L()
      log("RLC L")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x06 then
      c = 16
      RLC_HL()
      log("RLC (HL)")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x17 then
      c = 8
      RL_A()
      log("RL A")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x10 then
      c = 8
      RL_B()
      log("RL B")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x11 then
      c = 8
      RL_C()
      log("RL C")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x12 then
      c = 8
      RL_D()
      log("RL D")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x13 then
      c = 8
      RL_E()
      log("RL E")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x14 then
      c = 8
      RL_H()
      log("RL H")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x15 then
      c = 8
      RL_L()
      log("RL L")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x16 then
      c = 16
      RL_HL()
      log("RL (HL)")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x0f then
      c = 8
      RRC_A()
      log("RRC A")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x08 then
      c = 8
      RRC_B()
      log("RRC B")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x09 then
      c = 8
      RRC_C()
      log("RRC C")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x0a then
      c = 8
      RRC_D()
      log("RRC D")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x0b then
      c = 8
      RRC_E()
      log("RRC E")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x0c then
      c = 8
      RRC_H()
      log("RRC H")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x0d then
      c = 8
      RRC_L()
      log("RRC L")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x0e then
      c = 16
      RRC_HL()
      log("RRC (HL)")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x1f then
      c = 8
      RR_A()
      log("RR A")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x18 then
      c = 8
      RR_B()
      log("RR B")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x19 then
      c = 8
      RR_C()
      log("RR C")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x1a then
      c = 8
      RR_D()
      log("RR D")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x1b then
      c = 8
      RR_E()
      log("RR E")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x1c then
      c = 8
      RR_H()
      log("RR H")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x1d then
      c = 8
      RR_L()
      log("RR L")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x1e then
      c = 16
      RR_HL()
      log("RR (HL)")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x27 then
      c = 8
      SLA_A()
      log("SLA A")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x20 then
      c = 8
      SLA_B()
      log("SLA B")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x21 then
      c = 8
      SLA_C()
      log("SLA C")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x22 then
      c = 8
      SLA_D()
      log("SLA D")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x23 then
      c = 8
      SLA_E()
      log("SLA E")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x24 then
      c = 8
      SLA_H()
      log("SLA H")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x25 then
      c = 8
      SLA_L()
      log("SLA L")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x26 then
      c = 16
      SLA_HL()
      log("SLA (HL)")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x2f then
      c = 8
      SRA_A()
      log("SRA A")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x28 then
      c = 8
      SRA_B()
      log("SRA B")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x29 then
      c = 8
      SRA_C()
      log("SRA C")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x2a then
      c = 8
      SRA_D()
      log("SRA D")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x2b then
      c = 8
      SRA_E()
      log("SRA E")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x2c then
      c = 8
      SRA_H()
      log("SRA H")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x2d then
      c = 8
      SRA_L()
      log("SRA L")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x2e then
      c = 16
      SRA_HL()
      log("SRA (HL)")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x3f then
      c = 8
      SRL_A()
      log("SRL A")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x38 then
      c = 8
      SRL_B()
      log("SRL B")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x39 then
      c = 8
      SRL_C()
      log("SRL C")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x3a then
      c = 8
      SRL_D()
      log("SRL D")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x3b then
      c = 8
      SRL_E()
      log("SRL E")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x3c then
      c = 8
      SRL_H()
      log("SRL H")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x3d then
      c = 8
      SRL_L()
      log("SRL L")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x3e then
      c = 16
      SRL_HL()
      log("SRL (HL)")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0x47 then
      c = 8
      BIT_b_A(memory:read_8b(pc + 1))
      log("BIT " .. toHex(pc + 1) .. ", A")
      pc = pc + 2
    elseif memory:read_8b(pc) == 0x40 then
      c = 8
      BIT_b_B(memory:read_8b(pc + 1))
      log("BIT " .. toHex(pc + 1) .. ", B")
      pc = pc + 2
    elseif memory:read_8b(pc) == 0x41 then
      c = 8
      BIT_b_C(memory:read_8b(pc + 1))
      log("BIT " .. toHex(pc + 1) .. ", C")
      pc = pc + 2
    elseif memory:read_8b(pc) == 0x42 then
      c = 8
      BIT_b_D(memory:read_8b(pc + 1))
      log("BIT " .. toHex(pc + 1) .. ", D")
      pc = pc + 2
    elseif memory:read_8b(pc) == 0x43 then
      c = 8
      BIT_b_E(memory:read_8b(pc + 1))
      log("BIT " .. toHex(pc + 1) .. ", E")
      pc = pc + 2
    elseif memory:read_8b(pc) == 0x44 then
      c = 8
      BIT_b_H(memory:read_8b(pc + 1))
      log("BIT " .. toHex(pc + 1) .. ", H")
      pc = pc + 2
    elseif memory:read_8b(pc) == 0x45 then
      c = 8
      BIT_b_L(memory:read_8b(pc + 1))
      log("BIT " .. toHex(pc + 1) .. ", L")
      pc = pc + 2
    elseif memory:read_8b(pc) == 0x46 then
      c = 16
      BIT_b_HL(memory:read_8b(pc + 1))
      log("BIT " .. toHex(pc + 1) .. ", (HL)")
      pc = pc + 2
    elseif memory:read_8b(pc) == 0xc7 then
      c = 8
      SET_b_A(memory:read_8b(pc + 1))
      log("SET " .. toHex(pc + 1) .. ", A")
      pc = pc + 2
    elseif memory:read_8b(pc) == 0xc0 then
      c = 8
      SET_b_B(memory:read_8b(pc + 1))
      log("SET " .. toHex(pc + 1) .. ", B")
      pc = pc + 2
    elseif memory:read_8b(pc) == 0xc1 then
      c = 8
      SET_b_C(memory:read_8b(pc + 1))
      log("SET " .. toHex(pc + 1) .. ", C")
      pc = pc + 2
    elseif memory:read_8b(pc) == 0xc2 then
      c = 8
      SET_b_D(memory:read_8b(pc + 1))
      log("SET " .. toHex(pc + 1) .. ", D")
      pc = pc + 2
    elseif memory:read_8b(pc) == 0xc3 then
      c = 8
      SET_b_E(memory:read_8b(pc + 1))
      log("SET " .. toHex(pc + 1) .. ", E")
      pc = pc + 2
    elseif memory:read_8b(pc) == 0xc4 then
      c = 8
      SET_b_H(memory:read_8b(pc + 1))
      log("SET " .. toHex(pc + 1) .. ", H")
      pc = pc + 2
    elseif memory:read_8b(pc) == 0xc5 then
      c = 8
      SET_b_L(memory:read_8b(pc + 1))
      log("SET " .. toHex(pc + 1) .. ", L")
      pc = pc + 1
    elseif memory:read_8b(pc) == 0xc6 then
      c = 16
      SET_b_HL(memory:read_8b(pc + 1))
      log("SET " .. toHex(pc + 1) .. ", (HL)")
      pc = pc + 2
    elseif memory:read_8b(pc) == 0x87 then
      c = 8
      RES_b_A(memory:read_8b(pc + 1))
      log("RES " .. toHex(pc + 1) .. ", A")
      pc = pc + 2
    elseif memory:read_8b(pc) == 0x80 then
      c = 8
      RES_b_B(memory:read_8b(pc + 1))
      log("RES " .. toHex(pc + 1) .. ", B")
      pc = pc + 2
    elseif memory:read_8b(pc) == 0x81 then
      c = 8
      RES_b_C(memory:read_8b(pc + 1))
      log("RES " .. toHex(pc + 1) .. ", C")
      pc = pc + 2
    elseif memory:read_8b(pc) == 0x82 then
      c = 8
      RES_b_D(memory:read_8b(pc + 1))
      log("RES " .. toHex(pc + 1) .. ", D")
      pc = pc + 2
    elseif memory:read_8b(pc) == 0x83 then
      c = 8
      RES_b_E(memory:read_8b(pc + 1))
      log("RES " .. toHex(pc + 1) .. ", E")
      pc = pc + 2
    elseif memory:read_8b(pc) == 0x84 then
      c = 8
      RES_b_H(memory:read_8b(pc + 1))
      log("RES " .. toHex(pc + 1) .. ", H")
      pc = pc + 2
    elseif memory:read_8b(pc) == 0x85 then
      c = 8
      RES_b_L(memory:read_8b(pc + 1))
      log("RES " .. toHex(pc + 1) .. ", L")
      pc = pc + 2
    elseif memory:read_8b(pc) == 0x86 then
      c = 8
      RES_b_HL(memory:read_8b(pc + 1))
      log("RES " .. toHex(pc + 1) .. ", (HL)")
      pc = pc + 2
    else
      log(toHex(memory:read_8b(pc)) .. " is not an opcode with the prefix CB!")
    end

    pc = pc + 2
  else
    log(toHex(memory:read_8b(pc - 1)) .. " is not handled")
    pc = pc + 1
  end
end
