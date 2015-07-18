command = ""

function log (str)
	command = str

	--print(str)
end

function dispatcher ()
	log(toHex(pc) .. ": ")

	c = 0 -- Number of clock cycles to run the command

	if memory[pc] == 0x06 then
		LD_B_n(memory[pc + 1])
		log("LD B, " .. toHex(memory[pc + 1]))
		c = 8
		pc = pc + 2
	elseif memory[pc] == 0x0e then
		LD_C_n(memory[pc + 1])
		log("LD C, " .. toHex(memory[pc + 1]))
		c = 8
		pc = pc + 2
	elseif memory[pc] == 0x16 then
		LD_D_n(memory[pc + 1])
		log("LD D, " .. toHex(memory[pc + 1]))
		c = 8
		pc = pc + 2
	elseif memory[pc] == 0x1e then
		LD_E_n(memory[pc + 1])
		log("LD E, " .. toHex(memory[pc + 1]))
		c = 8
		pc = pc + 2
	elseif memory[pc] == 0x26 then
		LD_H_n(memory[pc + 1])
		log("LD H, " .. toHex(memory[pc + 1]))
		c = 8
		pc = pc + 2
	elseif memory[pc] == 0x2e then
		LD_L_n(memory[pc + 1])
		log("LD L, " .. toHex(memory[pc + 1]))
		c = 8
		pc = pc + 2
	elseif memory[pc] == 0x7f then
		LD_A_A()
		log("LD A, A")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x78 then
		LD_A_B()
		log("LD A, B")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x79 then
		LD_A_C()
		log("LD A, C")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x7a then
		LD_A_D()
		log("LD A, D")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x7b then
		LD_A_E()
		log("LD A, E")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x7c then
		LD_A_H()
		log("LD A, H")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x7d then
		LD_A_L()
		log("LD A, L")
		c = 4
		pc = pc +1
	elseif memory[pc] == 0x7e then
		LD_A_HL()
		log("LD A, (HL)")
		c = 8
		pc = pc + 1
	elseif memory[pc] == 0x40 then
		LD_B_B()
		log("LD B, B")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x41 then
		LD_B_C()
		log("LD B, C")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x42 then
		LD_B_D()
		log("LD B, D")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x43 then
		LD_B_E()
		log("LD B, E")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x44 then
		LD_B_H()
		log("LD B, H")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x45 then
		LD_B_L()
		log("LD B, L")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x46 then
		LD_B_HL()
		log("LD B, (HL)")
		c = 8
		pc = pc + 1
	elseif memory[pc] == 0x48 then
		LD_C_B()
		log("LD C, B")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x49 then
		LD_C_C()
		log("LD C, C")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x4a then
		LD_C_D()
		log("LD C, D")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x4b then
		LD_C_E()
		log("LD C, E")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x4c then
		LD_C_H()
		log("LD C, H")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x4d then
		LD_C_L()
		log("LD C, L")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x4e then
		LD_C_HL()
		log("LD C, (HL)")
		c = 8
		pc = pc + 1
	elseif memory[pc] == 0x50 then
		LD_D_B()
		log("LD D, B")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x51 then
		LD_D_C()
		log("LD D, C")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x52 then
		LD_D_D()
		log("LD D, D")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x53 then
		LD_D_E()
		log("LD D, E")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x54 then
		LD_D_H()
		log("LD D, H")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x55 then
		LD_D_L()
		log("LD D, L")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x56 then
		LD_D_HL()
		log("LD D, (HL)")
		c = 8
		pc = pc + 1
	elseif memory[pc] == 0x58 then
		LD_E_B()
		log("LD E, B")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x59 then
		LD_E_C()
		log("LD E, C")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x5a then
		LD_E_D()
		log("LD E, D")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x5b then
		LD_E_E()
		log("LD E, E")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x5c then
		LD_E_H()
		log("LD E, H")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x5d then
		LD_E_L()
		log("LD E, L")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x5e then
		LD_E_HL()
		log("LD E, (HL)")
		c = 8
		pc = pc + 1
	elseif memory[pc] == 0x60 then
		LD_H_B()
		log("LD H, B")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x61 then
		LD_H_C()
		log("LD H, C")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x62 then
		LD_H_D()
		log("LD H, D")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x63 then
		LD_H_E()
		log("LD H, E")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x64 then
		LD_H_H()
		log("LD H, H")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x65 then
		LD_H_L()
		log("LD H, L")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x66 then
		LD_H_HL()
		log("LD H, (HL)")
		c = 8
		pc = pc + 1
	elseif memory[pc] == 0x68 then
		LD_L_B()
		log("LD L, B")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x69 then
		LD_L_C()
		log("LD L, C")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x6a then
		LD_L_D()
		log("LD L, D")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x6b then
		LD_L_E()
		log("LD L, E")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x6c then
		LD_L_H()
		log("LD L, H")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x6d then
		LD_L_L()
		log("LD L, L")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x6e then
		LD_L_HL()
		log("LD L, (HL)")
		c = 8
		pc = pc + 1
	elseif memory[pc] == 0x70 then
		LD_HL_B()
		log("LD (HL), B")
		c = 8
		pc = pc + 1
	elseif memory[pc] == 0x71 then
		LD_HL_C()
		log("LD (HL), C")
		c = 8
		pc = pc + 1
	elseif memory[pc] == 0x72 then
		LD_HL_D()
		log("LD (HL), D")
		c = 8
		pc = pc + 1
	elseif memory[pc] == 0x73 then
		LD_HL_E()
		log("LD (HL), E")
		c = 8
		pc = pc + 1
	elseif memory[pc] == 0x74 then
		LD_HL_H()
		log("LD (HL), H")
		c = 8
		pc = pc + 1
	elseif memory[pc] == 0x75 then
		LD_HL_L()
		log("LD (HL), L")
		c = 8
		pc = pc + 1
	elseif memory[pc] == 0x36 then
		LD_HL_n(memory[pc + 1])
		log("LD (HL), " .. toHex(memory[pc + 1]))
		c = 12
		pc = pc + 2
	elseif memory[pc] == 0x0a then
		LD_A_BC()
		log("LD A, (BC)")
		c = 8
		pc = pc + 1
	elseif memory[pc] == 0x1a then
		LD_A_DE()
		log("LD A, (DE)")
		c = 8
		pc = pc + 1
	elseif memory[pc] == 0x7e then
		LD_A_HL()
		log("LD A, (HL)")
		c = 8
		pc = pc + 1
	elseif memory[pc] == 0xfa then
		LD_A_nn(to16n(memory[pc + 1], memory[pc + 2]))
		log("LD A, " .. toHex(memory[pc + 1]) .. u_toHex(pc + 2))
		c = 16
		pc = pc + 3
	elseif memory[pc] == 0x3e then
		LD_A_n(memory[pc + 1])
		log("LD A, " .. toHex(memory[pc + 1]))
		c = 8
		pc = pc + 2
	elseif memory[pc] == 0x47 then
		LD_B_A()
		log("LD B, A")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x4f then
		LD_C_A()
		log("LD C, A")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x57 then
		LD_D_A()
		log("LD D, A")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x5f then
		LD_E_A()
		log("LD E, A")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x67 then
		LD_H_A()
		log("LD H, A")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x6f then
		LD_L_A()
		log("LD L, A")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x02 then
		LD_BC_A()
		log("LD (BC), A")
		c = 8
		pc = pc + 1
	elseif memory[pc] == 0x12 then
		LD_DE_A()
		log("LD (DE), A")
		c = 8
		pc = pc + 1
	elseif memory[pc] == 0x77 then
		LD_HL_A()
		log("LD (HL), A")
		c = 8
		pc = pc + 1
	elseif memory[pc] == 0xea then
		LD_nn_A(to16b(memory[pc + 1], memory[pc + 2]))
		log("LD (" .. toHex(memory[pc + 1]) .. "" .. u_toHex(pc + 2) .. "), A")
		c = 16
		pc = pc + 3
	elseif memory[pc] == 0xf2 then
		LD_A_iC()
		log("LD A, (C)")
		c = 8
		pc = pc + 1
	elseif memory[pc] == 0xe2 then
		LD_iC_A()
		log("LD ($FF00 .. C), A")
		c = 8
		pc = pc + 1
	elseif memory[pc] == 0x3a then
		LDD_A_HL()
		log("LD A, (HLD) or LD A, (HL-) or LDD A, (HL)")
		c = 8
		pc = pc + 1
	elseif memory[pc] == 0x32 then
		LDD_HL_A()
		log("LD (HLD), A or LD (HL-), A or LDD (HL), A")
		c = 8
		pc = pc + 1
	elseif memory[pc] == 0x2a then
		LDI_A_HL()
		log("LD A, (HLI) or LD A, (HL..) or LDI A, (HL)")
		c = 8
		pc = pc + 1
	elseif memory[pc] == 0x22 then
		LDI_HL_A()
		log("LD (HLI), LD A or LD (HL..), LDI A or (HL), A")
		c = 8
		pc = pc + 1
	elseif memory[pc] == 0xe0 then
		LDH_in_A(memory[pc + 1])
		log("LDH ($FF00 + " .. toHex(memory[pc + 1]) .. "), A")
		c = 12
		pc = pc + 2
	elseif memory[pc] == 0xf0 then
		LDH_A_in(memory[pc + 1])
		log("LDH A, ($FF00 + " .. toHex(memory[pc + 1]) .. ")")
		c = 12
		pc = pc + 2
	elseif memory[pc] == 0x01 then
		LD_BC_nn(to16b(memory[pc + 1], memory[pc + 2]))
		log("LD BC, " .. toHex(memory[pc + 1]) .. u_toHex(pc + 2))
		c = 12
		pc = pc + 3
	elseif memory[pc] == 0x11 then
		LD_DE_nn(to16b(memory[pc + 1], memory[pc + 2]))
		log("LD DE, " .. toHex(memory[pc + 1]) .. u_toHex(pc + 2))
		c = 12
		pc = pc + 3
	elseif memory[pc] == 0x21 then
		LD_HL_nn(to16b(memory[pc + 1], memory[pc + 2]))
		log("LD HL, " .. toHex(memory[pc + 1]) .. u_toHex(pc + 2))
		c = 12
		pc = pc + 3
	elseif memory[pc] == 0x31 then
		LD_SP_nn(to16b(memory[pc + 1], memory[pc + 2]))
		log("LD SP, " .. toHex(memory[pc + 1]) .. u_toHex(pc + 2))
		c = 12
		pc = pc + 3
	elseif memory[pc] == 0xf9 then
		LD_SP_HL()
		log("LD SP, HL")
		c = 8
		pc = pc + 1
	elseif memory[pc] == 0xf8 then
		LDHL_SP_n(memory[pc + 1])
		log("LDHL SP, " .. toHex(memory[pc + 1]) .. " or LD HL, SP .. " .. toHex(memory[pc + 1]))
		c = 12
		pc = pc + 2
	elseif memory[pc] == 0x08 then
		LD_nn_SP(to16b(memory[pc + 1], memory[pc + 2]))
		log("LD " .. toHex(memory[pc + 1]) .. u_toHex(pc + 2) .. ", SP")
		c = 20
		pc = pc + 3
	elseif memory[pc] == 0xf5 then
		PUSH_AF()
		log("PUSH AF")
		c = 16
		pc = pc + 1
	elseif memory[pc] == 0xc5 then
		PUSH_BC()
		log("PUSH BC")
		c = 16
		pc = pc + 1
	elseif memory[pc] == 0xd5 then
		PUSH_DE()
		log("PUSH DE")
		c = 16
		pc = pc + 1
	elseif memory[pc] == 0xe5 then
		PUSH_HL()
		log("PUSH HL")
		c = 16
		pc = pc + 1
	elseif memory[pc] == 0xf1 then
		POP_AF()
		log("POP AF")
		c = 12
		pc = pc + 1
	elseif memory[pc] == 0xc1 then
		POP_BC()
		log("POP BC")
		c = 12
		pc = pc + 1
	elseif memory[pc] == 0xd1 then
		POP_DE()
		log("POP DE")
		c = 12
		pc = pc + 1
	elseif memory[pc] == 0xe1 then
		POP_HL()
		log("POP HL")
		c = 12
		pc = pc + 1
	elseif memory[pc] == 0x87 then
		ADD_A_A()
		log("ADD A, A")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x80 then
		ADD_A_B()
		log("ADD A, B")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x81 then
		ADD_A_C()
		log("ADD A, C")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x82 then
		ADD_A_D()
		log("ADD A, D")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x83 then
		ADD_A_E()
		log("ADD A, E")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x84 then
		ADD_A_H()
		log("ADD A, H")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x85 then
		ADD_A_L()
		log("ADD A, L")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x86 then
		ADD_A_HL()
		log("ADD A, (HL)")
		c = 8
		pc = pc + 1
	elseif memory[pc] == 0xc6 then
		ADD_A_n(memory[pc + 1])
		log("ADD A, " .. toHex(memory[pc + 1]))
		c = 8
		pc = pc + 2
	elseif memory[pc] == 0x8f then
		ADC_A_A()
		log("ADC A, A")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x88 then
		ADC_A_B()
		log("ADC A, B")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x89 then
		ADC_A_C()
		log("ADC A, C")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x8a then
		ADC_A_D()
		log("ADC A, D")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x8b then
		ADC_A_E()
		log("ADC A, E")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x8c then
		ADC_A_H()
		log("ADC A, H")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x8d then
		ADC_A_L()
		log("ADC A, L")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x8e then
		ADC_A_HL()
		log("ADC A, (HL)")
		c = 8
		pc = pc + 1
	elseif memory[pc] == 0xce then
		ADC_A_n(memory[pc + 1])
		log("ADC A, " .. toHex(memory[pc + 1]))
		c = 8
		pc = pc + 2
	elseif memory[pc] == 0x97 then
		SUB_A()
		log("SUB A, A")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x90 then
		SUB_B()
		log("SUB A, B")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x91 then
		SUB_C()
		log("SUB A, C")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x92 then
		SUB_D()
		log("SUB A, D")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x93 then
		SUB_E()
		log("SUB A, E")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x94 then
		SUB_H()
		log("SUB A, H")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x95 then
		SUB_L()
		log("SUB A, L")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x96 then
		SUB_HL()
		log("SUB A, (HL)")
		c = 8
		pc = pc + 1
	elseif memory[pc] == 0xd6 then
		SUB_n(memory[pc + 1])
		log("SUB A, " .. toHex(memory[pc + 1]))
		c = 8
		pc = pc + 2
	elseif memory[pc] == 0x9f then
		SBC_A_A()
		log("SBC A, A")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x98 then
		SBC_A_B()
		log("SBC A, B")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x99 then
		SBC_A_C()
		log("SBC A, C")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x9a then
		SBC_A_D()
		log("SBC A, D")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x9b then
		SBC_A_E()
		log("SBC A, E")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x9c then
		SBC_A_H()
		log("SBC A, H")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x9d then
		SBC_A_L()
		log("SBC A, L")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x9e then
		SBC_A_HL()
		log("SBC A, (HL)")
		c = 8
		pc = pc + 1
	elseif memory[pc] == 0xde then
		SBC_A_n(memory[pc + 1])
		log("SBC A, " .. toHex(memory[pc + 1]))
		c = 8
		pc = pc + 2
	elseif memory[pc] == 0xa7 then
		AND_A()
		log("AND A")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0xa0 then
		AND_B()
		log("AND B")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0xa1 then
		AND_C()
		log("AND C")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0xa2 then
		AND_D()
		log("AND D")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0xa3 then
		AND_E()
		log("AND E")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0xa4 then
		AND_H()
		log("AND H")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0xa5 then
		AND_L()
		log("AND L")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0xa6 then
		AND_HL()
		log("AND (HL)")
		c = 8
		pc = pc + 1
	elseif memory[pc] == 0xe6 then
		AND_n(memory[pc + 1])
		log("AND " .. toHex(memory[pc + 1]))
		c = 8
		pc = pc + 2
	elseif memory[pc] == 0xb7 then
		OR_A()
		log("OR A")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0xb0 then
		OR_B()
		log("OR B")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0xb1 then
		OR_C()
		log("OR C")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0xb2 then
		OR_D()
		log("OR D")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0xb3 then
		OR_E()
		log("OR E")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0xb4 then
		OR_H()
		log("OR H")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0xb5 then
		OR_L()
		log("OR L")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0xb6 then
		OR_HL()
		log("OR (HL)")
		c = 8
		pc = pc + 1
	elseif memory[pc] == 0xf6 then
		OR_n(memory[pc + 1])
		log("OR " .. toHex(memory[pc + 1]))
		c = 8
		pc = pc + 2
	elseif memory[pc] == 0xaf then
		XOR_A()
		log("XOR A")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0xa8 then
		XOR_B()
		log("XOR B")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0xa9 then
		XOR_C()
		log("XOR C")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0xaa then
		XOR_D()
		log("XOR D")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0xab then
		XOR_E()
		log("XOR E")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0xac then
		XOR_H()
		log("XOR H")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0xad then
		XOR_L()
		log("XOR L")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0xea then
		XOR_HL()
		log("XOR (HL)")
		c = 8
		pc = pc + 1
	elseif memory[pc] == 0xee then
		XOR_n(memory[pc + 1])
		log("XOR " .. toHex(memory[pc + 1]))
		c = 8
		pc = pc + 2
	elseif memory[pc] == 0xbf then
		CP_A()
		log("CP A")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0xb8 then
		CP_B()
		log("CP B")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0xb9 then
		CP_C()
		log("CP C")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0xba then
		CP_D()
		log("CP D")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0xbb then
		CP_E()
		log("CP E")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0xbc then
		CP_H()
		log("CP H")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0xbd then
		CP_L()
		log("CP L")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0xbe then
		CP_HL()
		log("CP (HL)")
		c = 8
		pc = pc + 1
	elseif memory[pc] == 0xfe then
		CP_n(memory[pc + 1])
		log("CP " .. toHex(memory[pc + 1]))
		c = 8
		pc = pc + 2
	elseif memory[pc] == 0x3c then
		INC_A()
		log("INC A")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x04 then
		INC_B()
		log("INC B")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x0c then
		INC_C()
		log("INC C")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x14 then
		INC_D()
		log("INC D")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x1c then
		INC_E()
		log("INC E")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x24 then
		INC_H()
		log("INC H")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x2c then
		INC_L()
		log("INC L")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x34 then
		INC_HL()
		log("INC (HL)")
		c = 12
		pc = pc + 1
	elseif memory[pc] == 0x3d then
		DEC_A()
		log("DEC A")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x05 then
		DEC_B()
		log("DEC B")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x0d then
		DEC_C()
		log("DEC C")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x15 then
		DEC_D()
		log("DEC D")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x1d then
		DEC_E()
		log("DEC E")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x25 then
		DEC_H()
		log("DEC H")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x2d then
		DEC_L()
		log("DEC L")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x35 then
		DEC_HL()
		log("DEC (HL)")
		c = 12
		pc = pc + 1
	elseif memory[pc] == 0x09 then
		ADD_HL_BC()
		log("ADD HL, BC")
		c = 8
		pc = pc + 1
	elseif memory[pc] == 0x19 then
		ADD_HL_DE()
		log("ADD HL, DE")
		c = 8
		pc = pc + 1
	elseif memory[pc] == 0x29 then
		ADD_HL_HL()
		log("ADD HL, HL")
		c = 8
		pc = pc + 1
	elseif memory[pc] == 0x39 then
		ADD_HL_SP()
		log("ADD HL, SP")
		c = 8
		pc = pc + 1
	elseif memory[pc] == 0xe8 then
		ADD_SP_n(memory[pc + 1])
		log("ADD SP, " .. toHex(pc + 1))
		c = 16
		pc = pc + 2
	elseif memory[pc] == 0x03 then
		INC_BC()
		log("INC BC")
		c = 8
		pc = pc + 1
	elseif memory[pc] == 0x13 then
		INC_DE()
		log("INC DE")
		c = 8
		pc = pc + 1
	elseif memory[pc] == 0x23 then
		INC_HL()
		log("INC HL")
		c = 8
		pc = pc + 1
	elseif memory[pc] == 0x33 then
		INC_SP()
		log("INC SP")
		c = 8
		pc = pc + 1
	elseif memory[pc] == 0x0b then
		DEC_BC()
		log("DEC BC")
		c = 8
		pc = pc + 1
	elseif memory[pc] == 0x1b then
		DEC_DE()
		log("DEC DE")
		c = 8
		pc = pc + 1
	elseif memory[pc] == 0x2b then
		DEC_HL()
		log("DEC HL")
		c = 8
		pc = pc + 1
	elseif memory[pc] == 0x3b then
		DEC_SP()
		log("DEC SP")
		c = 8
		pc = pc + 1
	elseif memory[pc] == 0x27 then
		DAA()
		log("DAA")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x2f then
		CPL()
		log("CPL")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x3f then
		CCF()
		log("CCF")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x37 then
		SCF()
		log("SCF")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x00 then
		NOP()
		log("NOP")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x76 then
		HALT()
		log("HALT")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x10 then
		STOP()
		log("STOP")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0xf3 then
		DI()
		log("DI")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0xfb then
		EI()
		log("EI")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x07 then
		RLCA()
		log("RLCA")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x17 then
		RLA()
		log("RLA")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x0f then
		RRCA()
		log("RRCA")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0x1f then
		RRA()
		log("RRA")
		c = 4
		pc = pc + 1
	elseif memory[pc] == 0xc3 then
		log("JP " .. toHex(memory[pc + 1]) .. " " .. toHex(memory[pc + 2]))
		JP_nn(to16b(memory[pc + 1], memory[pc + 2]))
		c = 12
	elseif memory[pc] == 0xc2 then
		log("JP NZ, " .. toHex(memory[pc + 1]) .. " " .. toHex(memory[pc + 2]))
		JP_NZ_nn(to16b(memory[pc + 1], memory[pc + 2]))
		c = 12
	elseif memory[pc] == 0xca then
		log("JP Z" .. toHex(memory[pc + 1]) .. " " .. toHex(memory[pc + 2]))
		JP_Z_nn(to16b(memory[pc + 1], memory[pc + 2]))
		c = 12
	elseif memory[pc] == 0xd2 then
		log("JP  NC" .. toHex(memory[pc + 1]) .. " " .. toHex(memory[pc + 2]))
		JP_NC_nn(to16b(memory[pc + 1], memory[pc + 2]))
		c = 12
	elseif memory[pc] == 0xda then
		log("JP  C" .. toHex(memory[pc + 1]) .. " " .. toHex(memory[pc + 2]))
		JP_C_nn(to16b(memory[pc + 1], memory[pc + 2]))
		c = 12
	elseif memory[pc] == 0xe9 then
		log("JP (HL)")
		JP_HL(to16b(memory[pc + 1], memory[pc + 2]))
		c = 4
	elseif memory[pc] == 0x18 then
		log("JR " .. toHex(memory[pc + 1]))
		JR_n(memory[pc + 1])
		c = 8
	elseif memory[pc] == 0x20 then
		log("JR NZ, " .. toHex(memory[pc + 1]))
		JR_NZ_n(memory[pc + 1])
		c = 8
	elseif memory[pc] == 0x28 then
		log("JR Z, " .. toHex(memory[pc + 1]))
		JR_Z_n(memory[pc + 1])
		c = 8
	elseif memory[pc] == 0x30 then
		log("JR NC, " .. toHex(memory[pc + 1]))
		JR_NC_n(memory[pc + 1])
		c = 8
	elseif memory[pc] == 0x38 then
		log("JR C, " .. toHex(memory[pc + 1]))
		JR_C_n(memory[pc + 1])
		c = 8
	elseif memory[pc] == 0xcd then
		log("CALL " .. toHex(memory[pc + 1]) .. " " .. toHex(memory[pc + 2]))
		CALL_nn(to16b(memory[pc + 1], memory[pc + 2]))
		c = 12
	elseif memory[pc] == 0xc4 then
		log("CALL NZ, " .. toHex(memory[pc + 1]) .. " " .. toHex(memory[pc + 2]))
		CALL_NZ_nn(to16b(memory[pc + 1], memory[pc + 2]))
		c = 12
	elseif memory[pc] == 0xcc then
		log("CALL Z, " .. toHex(memory[pc + 1]) .. " " .. toHex(memory[pc + 2]))
		CALL_Z_nn(to16b(memory[pc + 1], memory[pc + 2]))
		c = 12
	elseif memory[pc] == 0xd4 then
		log("CALL NC, " .. toHex(memory[pc + 1]) .. " " .. toHex(memory[pc + 2]))
		CALL_NC_nn(to16b(memory[pc + 1], memory[pc + 2]))
		c = 12
	elseif memory[pc] == 0xdc then
		log("CALL C, " .. toHex(memory[pc + 1]) .. " " .. toHex(memory[pc + 2]))
		CALL_C_nn(to16b(memory[pc + 1], memory[pc + 2]))
		c = 12
	elseif memory[pc] == 0xc7 then
		RST_00H()
		log("RST 00H")
		c = 32
	elseif memory[pc] == 0xcf then
		log("RST 08H")
		RST_08H()
		c = 32
	elseif memory[pc] == 0xd7 then
		log("RST 10H")
		RST_10H()
		c = 32
	elseif memory[pc] == 0xdf then
		log("RST 18H")
		RST_18H()
		c = 32
	elseif memory[pc] == 0xe7 then
		log("RST 20H")
		RST_20H()
		c = 32
	elseif memory[pc] == 0xef then
		log("RST 28H")
		RST_28H()
		c = 32
	elseif memory[pc] == 0xf7 then
		log("RST 30H")
		RST_30H()
		c = 32
	elseif memory[pc] == 0xff then
		log("RST 38H")
		RST_38H()
		c = 32
	elseif memory[pc] == 0xc9 then
		log("RET")
		RET()
		c = 8
	elseif memory[pc] == 0xc0 then
		log("RET NZ")
		RET_NZ()
		c = 8
	elseif memory[pc] == 0xc8 then
		log("RET Z")
		RET_Z()
		c = 8
	elseif memory[pc] == 0xd0 then
		log("RET NC")
		RET_NC()
		c = 8
	elseif memory[pc] == 0xd8 then
		log("RET C")
		RET_C()
		c = 8
	elseif memory[pc] == 0xd9 then
		log("RETI")
		RETI()
		c = 8
	elseif memory[pc] == 0xfc then
		log("0xfc in an undocumented opcode and should not be used!")
		pc = pc + 1
	elseif memory[pc] == 0xcb then
		if memory[pc + 1] == 0x37 then
			SWAP_A()
			log("SWAP A")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0x30 then
			SWAP_B()
			log("SWAP B")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0x31 then
			SWAP_C()
			log("SWAP C")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0x32 then
			SWAP_D()
			log("SWAP D")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0x33 then
			SWAP_E()
			log("SWAP E")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0x34 then
			SWAP_H()
			log("SWAP H")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0x35 then
			SWAP_L()
			log("SWAP L")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0x36 then
			SWAP_HL()
			log("SWAP (HL)")
			c = 16
			pc = pc + 1
		elseif memory[pc + 1] == 0x07 then
			RLC_A()
			log("RLC A")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0x00 then
			RLC_B()
			log("RLC B")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0x01 then
			RLC_C()
			log("RLC C")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0x02 then
			RLC_D()
			log("RLC D")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0x03 then
			RLC_E()
			log("RLC E")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0x04 then
			RLC_H()
			log("RLC H")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0x05 then
			RLC_L()
			log("RLC L")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0x06 then
			RLC_HL()
			log("RLC (HL)")
			c = 16
			pc = pc + 1
		elseif memory[pc + 1] == 0x17 then
			RL_A()
			log("RL A")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0x10 then
			RL_B()
			log("RL B")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0x11 then
			RL_C()
			log("RL C")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0x12 then
			RL_D()
			log("RL D")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0x13 then
			RL_E()
			log("RL E")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0x14 then
			RL_H()
			log("RL H")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0x15 then
			RL_L()
			log("RL L")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0x16 then
			RL_HL()
			log("RL (HL)")
			c = 16
			pc = pc + 1
		elseif memory[pc + 1] == 0x0f then
			RRC_A()
			log("RRC A")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0x08 then
			RRC_B()
			log("RRC B")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0x09 then
			RRC_C()
			log("RRC C")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0x0a then
			RRC_D()
			log("RRC D")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0x0b then
			RRC_E()
			log("RRC E")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0x0c then
			RRC_H()
			log("RRC H")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0x0d then
			RRC_L()
			log("RRC L")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0x0e then
			RRC_HL()
			log("RRC (HL)")
			c = 16
			pc = pc + 1
		elseif memory[pc + 1] == 0x1f then
			RR_A()
			log("RR A")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0x18 then
			RR_B()
			log("RR B")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0x19 then
			RR_C()
			log("RR C")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0x1a then
			RR_D()
			log("RR D")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0x1b then
			RR_E()
			log("RR E")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0x1c then
			RR_H()
			log("RR H")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0x1d then
			RR_L()
			log("RR L")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0x1e then
			RR_HL()
			log("RR (HL)")
			c = 16
			pc = pc + 1
		elseif memory[pc + 1] == 0x27 then
			SLA_A()
			log("SLA A")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0x20 then
			SLA_B()
			log("SLA B")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0x21 then
			SLA_C()
			log("SLA C")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0x22 then
			SLA_D()
			log("SLA D")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0x23 then
			SLA_E()
			log("SLA E")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0x24 then
			SLA_H()
			log("SLA H")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0x25 then
			SLA_L()
			log("SLA L")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0x26 then
			SLA_HL()
			log("SLA (HL)")
			c = 16
			pc = pc + 1
		elseif memory[pc + 1] == 0x2f then
			SRA_A()
			log("SRA A")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0x28 then
			SRA_B()
			log("SRA B")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0x29 then
			SRA_C()
			log("SRA C")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0x2a then
			SRA_D()
			log("SRA D")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0x2b then
			SRA_E()
			log("SRA E")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0x2c then
			SRA_H()
			log("SRA H")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0x2d then
			SRA_L()
			log("SRA L")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0x2e then
			SRA_HL()
			log("SRA (HL)")
			c = 16
			pc = pc + 1
		elseif memory[pc + 1] == 0x3f then
			SRL_A()
			log("SRL A")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0x38 then
			SRL_B()
			log("SRL B")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0x39 then
			SRL_C()
			log("SRL C")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0x3a then
			SRL_D()
			log("SRL D")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0x3b then
			SRL_E()
			log("SRL E")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0x3c then
			SRL_H()
			log("SRL H")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0x3d then
			SRL_L()
			log("SRL L")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0x3e then
			SRL_HL()
			log("SRL (HL)")
			c = 16
			pc = pc + 1
		elseif memory[pc + 1] == 0x47 then
			BIT_b_A(memory[pc + 2])
			log("BIT " .. toHex(pc + 2) .. ", A")
			c = 8
			pc = pc + 2
		elseif memory[pc + 1] == 0x40 then
			BIT_b_B(memory[pc + 2])
			log("BIT " .. toHex(pc + 2) .. ", B")
			c = 8
			pc = pc + 2
		elseif memory[pc + 1] == 0x41 then
			BIT_b_C(memory[pc + 2])
			log("BIT " .. toHex(pc + 2) .. ", C")
			c = 8
			pc = pc + 2
		elseif memory[pc + 1] == 0x42 then
			BIT_b_D(memory[pc + 2])
			log("BIT " .. toHex(pc + 2) .. ", D")
			c = 8
			pc = pc + 2
		elseif memory[pc + 1] == 0x43 then
			BIT_b_E(memory[pc + 2])
			log("BIT " .. toHex(pc + 2) .. ", E")
			c = 8
			pc = pc + 2
		elseif memory[pc + 1] == 0x44 then
			BIT_b_H(memory[pc + 2])
			log("BIT " .. toHex(pc + 2) .. ", H")
			c = 8
			pc = pc + 2
		elseif memory[pc + 1] == 0x45 then
			BIT_b_L(memory[pc + 2])
			log("BIT " .. toHex(pc + 2) .. ", L")
			c = 8
			pc = pc + 2
		elseif memory[pc + 1] == 0x46 then
			BIT_b_HL(memory[pc + 2])
			log("BIT " .. toHex(pc + 2) .. ", (HL)")
			c = 16
			pc = pc + 2
		elseif memory[pc + 1] == 0xc7 then
			SET_b_A(memory[pc + 2])
			log("SET " .. toHex(pc + 2) .. ", A")
			c = 8
			pc = pc + 2
		elseif memory[pc + 1] == 0xc0 then
			SET_b_B(memory[pc + 2])
			log("SET " .. toHex(pc + 2) .. ", B")
			c = 8
			pc = pc + 2
		elseif memory[pc + 1] == 0xc1 then
			SET_b_C(memory[pc + 2])
			log("SET " .. toHex(pc + 2) .. ", C")
			c = 8
			pc = pc + 2
		elseif memory[pc + 1] == 0xc2 then
			SET_b_D(memory[pc + 2])
			log("SET " .. toHex(pc + 2) .. ", D")
			c = 8
			pc = pc + 2
		elseif memory[pc + 1] == 0xc3 then
			SET_b_E(memory[pc + 2])
			log("SET " .. toHex(pc + 2) .. ", E")
			c = 8
			pc = pc + 2
		elseif memory[pc + 1] == 0xc4 then
			SET_b_H(memory[pc + 2])
			log("SET " .. toHex(pc + 2) .. ", H")
			c = 8
			pc = pc + 2
		elseif memory[pc + 1] == 0xc5 then
			SET_b_L(memory[pc + 2])
			log("SET " .. toHex(pc + 2) .. ", L")
			c = 8
			pc = pc + 1
		elseif memory[pc + 1] == 0xc6 then
			SET_b_HL(memory[pc + 2])
			log("SET " .. toHex(pc + 2) .. ", (HL)")
			c = 16
			pc = pc + 2
		elseif memory[pc + 1] == 0x87 then
			RES_b_A(memory[pc + 2])
			log("RES " .. toHex(pc + 2) .. ", A")
			c = 8
			pc = pc + 2
		elseif memory[pc + 1] == 0x80 then
			RES_b_B(memory[pc + 2])
			log("RES " .. toHex(pc + 2) .. ", B")
			c = 8
			pc = pc + 2
		elseif memory[pc + 1] == 0x81 then
			RES_b_C(memory[pc + 2])
			log("RES " .. toHex(pc + 2) .. ", C")
			c = 8
			pc = pc + 2
		elseif memory[pc + 1] == 0x82 then
			RES_b_D(memory[pc + 2])
			log("RES " .. toHex(pc + 2) .. ", D")
			c = 8
			pc = pc + 2
		elseif memory[pc + 1] == 0x83 then
			RES_b_E(memory[pc + 2])
			log("RES " .. toHex(pc + 2) .. ", E")
			c = 8
			pc = pc + 2
		elseif memory[pc + 1] == 0x84 then
			RES_b_H(memory[pc + 2])
			log("RES " .. toHex(pc + 2) .. ", H")
			c = 8
			pc = pc + 2
		elseif memory[pc + 1] == 0x85 then
			RES_b_L(memory[pc + 2])
			log("RES " .. toHex(pc + 2) .. ", L")
			c = 8
			pc = pc + 2
		elseif memory[pc + 1] == 0x86 then
			RES_b_HL(memory[pc + 2])
			log("RES " .. toHex(pc + 2) .. ", (HL)")
			c = 8
			pc = pc + 2
		else
			log(toHex(memory[pc + 1]) .. " is not an opcode with the prefix CB!")
		end

		pc = pc + 2
	else
		log(toHex(memory[pc]) .. " is not handled")
		pc = pc + 1
	end

	return c
end
