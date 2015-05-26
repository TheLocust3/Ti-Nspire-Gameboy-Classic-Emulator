function dispatcher ()
	io.print(toHex(pc) .. ": ")

	if rom[pc] == 0x06 then
		LD_B_n()
		print("LD B, " .. toHex(rom[pc + 1]))
		pc = pc + 2
	elseif rom[pc] == 0x0e then
		LD_C_n()
		print("LD C, " .. toHex(rom[pc + 1]))
		pc = pc + 2
	elseif rom[pc] == 0x16 then
		LD_D_n()
		print("LD D, " .. toHex(rom[pc + 1]))
		pc = pc + 2
	elseif rom[pc] == 0x1e then
		LD_E_n()
		print("LD E, " .. toHex(rom[pc + 1]))
		pc = pc + 2
	elseif rom[pc] == 0x26 then
		LD_H_n()
		print("LD H, " .. toHex(rom[pc + 1]))
		pc = pc + 2
	elseif rom[pc] == 0x2e then
		LD_L_n()
		print("LD L, " .. toHex(rom[pc + 1]))
		pc = pc + 2
	elseif rom[pc] == 0x7f then
		LD_A_A()
		print("LD A, A")
		pc = pc + 1
	elseif rom[pc] == 0x78 then
		LD_A_B()
		print("LD A, B")
		pc = pc + 1
	elseif rom[pc] == 0x79 then
		LD_A_C()
		print("LD A, C")
		pc = pc + 1
	elseif rom[pc] == 0x7a then
		LD_A_D()
		print("LD A, D")
		pc = pc + 1
	elseif rom[pc] == 0x7b then
		LD_A_E()
		print("LD A, E")
		pc = pc + 1
	elseif rom[pc] == 0x7c then
		LD_A_H()
		print("LD A, H")
		pc = pc + 1
	elseif rom[pc] == 0x7d then
		LD_A_L()
		print("LD A, L")
		pc = pc +1
	elseif rom[pc] == 0x7e then
		LD_A_HL()
		print("LD A, (HL)")
		pc = pc + 1
	elseif rom[pc] == 0x40 then
		LD_B_B()
		print("LD B, B")
		pc = pc + 1
	elseif rom[pc] == 0x41 then
		LD_B_C()
		print("LD B, C")
		pc = pc + 1
	elseif rom[pc] == 0x42 then
		LD_B_D()
		print("LD B, D")
		pc = pc + 1
	elseif rom[pc] == 0x43 then
		LD_B_E()
		print("LD B, E")
		pc = pc + 1
	elseif rom[pc] == 0x44 then
		LD_B_H()
		print("LD B, H")
		pc = pc + 1
	elseif rom[pc] == 0x45 then
		LD_B_L()
		print("LD B, L")
		pc = pc + 1
	elseif rom[pc] == 0x46 then
		LD_B_HL()
		print("LD B, (HL)")
		pc = pc + 1
	elseif rom[pc] == 0x48 then
		LD_C_B()
		print("LD C, B")
		pc = pc + 1
	elseif rom[pc] == 0x49 then
		LD_C_C()
		print("LD C, C")
		pc = pc + 1
	elseif rom[pc] == 0x4a then
		LD_C_D()
		print("LD C, D")
		pc = pc + 1
	elseif rom[pc] == 0x4b then
		LD_C_E()
		print("LD C, E")
		pc = pc + 1
	elseif rom[pc] == 0x4c then
		LD_C_H()
		print("LD C, H")
		pc = pc + 1
	elseif rom[pc] == 0x4d then
		LD_C_L()
		print("LD C, L")
		pc = pc + 1
	elseif rom[pc] == 0x4e then
		LD_C_HL()
		print("LD C, (HL)")
		pc = pc + 1
	elseif rom[pc] == 0x50 then
		LD_D_B()
		print("LD D, B")
		pc = pc + 1
	elseif rom[pc] == 0x51 then
		LD_D_C()
		print("LD D, C")
		pc = pc + 1
	elseif rom[pc] == 0x52 then
		LD_D_D()
		print("LD D, D")
		pc = pc + 1
	elseif rom[pc] == 0x53 then
		LD_D_E()
		print("LD D, E")
		pc = pc + 1
	elseif rom[pc] == 0x54 then
		LD_D_H()
		print("LD D, H")
		pc = pc + 1
	elseif rom[pc] == 0x55 then
		LD_D_L()
		print("LD D, L")
		pc = pc + 1
	elseif rom[pc] == 0x56 then
		LD_D_HL()
		print("LD D, (HL)")
		pc = pc + 1
	elseif rom[pc] == 0x58 then
		LD_E_B()
		print("LD E, B")
		pc = pc + 1
	elseif rom[pc] == 0x59 then
		LD_E_C()
		print("LD E, C")
		pc = pc + 1
	elseif rom[pc] == 0x5a then
		LD_E_D()
		print("LD E, D")
		pc = pc + 1
	elseif rom[pc] == 0x5b then
		LD_E_E()
		print("LD E, E")
		pc = pc + 1
	elseif rom[pc] == 0x5c then
		LD_E_H()
		print("LD E, H")
		pc = pc + 1
	elseif rom[pc] == 0x5d then
		LD_E_L()
		print("LD E, L")
		pc = pc + 1
	elseif rom[pc] == 0x5e then
		LD_E_HL()
		print("LD E, (HL)")
		pc = pc + 1
	elseif rom[pc] == 0x60 then
		LD_H_B()
		print("LD H, B")
		pc = pc + 1
	elseif rom[pc] == 0x61 then
		LD_H_C()
		print("LD H, C")
		pc = pc + 1
	elseif rom[pc] == 0x62 then
		LD_H_D()
		print("LD H, D")
		pc = pc + 1
	elseif rom[pc] == 0x63 then
		LD_H_E()
		print("LD H, E")
		pc = pc + 1
	elseif rom[pc] == 0x64 then
		LD_H_H()
		print("LD H, H")
		pc = pc + 1
	elseif rom[pc] == 0x65 then
		LD_H_L()
		print("LD H, L")
		pc = pc + 1
	elseif rom[pc] == 0x66 then
		LD_H_HL()
		print("LD H, (HL)")
		pc = pc + 1
	elseif rom[pc] == 0x68 then
		LD_L_B()
		print("LD L, B")
		pc = pc + 1
	elseif rom[pc] == 0x69 then
		LD_L_C()
		print("LD L, C")
		pc = pc + 1
	elseif rom[pc] == 0x6a then
		LD_L_D()
		print("LD L, D")
		pc = pc + 1
	elseif rom[pc] == 0x6b then
		LD_L_E()
		print("LD L, E")
		pc = pc + 1
	elseif rom[pc] == 0x6c then
		LD_L_H()
		print("LD L, H")
		pc = pc + 1
	elseif rom[pc] == 0x6d then
		LD_L_L()
		print("LD L, L")
		pc = pc + 1
	elseif rom[pc] == 0x6e then
		LD_L_HL()
		print("LD L, (HL)")
		pc = pc + 1
	elseif rom[pc] == 0x70 then
		LD_HL_B()
		print("LD (HL), B")
		pc = pc + 1
	elseif rom[pc] == 0x71 then
		LD_HL_C()
		print("LD (HL), C")
		pc = pc + 1
	elseif rom[pc] == 0x72 then
		LD_HL_D()
		print("LD (HL), D")
		pc = pc + 1
	elseif rom[pc] == 0x73 then
		LD_HL_E()
		print("LD (HL), E")
		pc = pc + 1
	elseif rom[pc] == 0x74 then
		LD_HL_H()
		print("LD (HL), H")
		pc = pc + 1
	elseif rom[pc] == 0x75 then
		LD_HL_L()
		print("LD (HL), L")
		pc = pc + 1
	elseif rom[pc] == 0x36 then
		LD_HL_n()
		print("LD (HL), " .. toHex(rom[pc + 1]))
		pc = pc + 2
	elseif rom[pc] == 0x0a then
		LD_A_BC()
		print("LD A, (BC)")
		pc = pc + 1
	elseif rom[pc] == 0x1a then
		LD_A_DE()
		print("LD A, (DE)")
		pc = pc + 1
	elseif rom[pc] == 0x7e then
		LD_A_HL()
		print("LD A, (HL)")
		pc = pc + 1
	elseif rom[pc] == 0xfa then
		LD_A_nn()
		print("LD A, " .. toHex(rom[pc + 1]) .. u_toHex(pc + 2))
		pc = pc + 3
	elseif rom[pc] == 0x3e then
		LD_A_n()
		print("LD A, " .. toHex(rom[pc + 1]))
		pc = pc + 2
	elseif rom[pc] == 0x47 then
		LD_B_A()
		print("LD B, A")
		pc = pc + 1
	elseif rom[pc] == 0x4f then
		LD_C_A()
		print("LD C, A")
		pc = pc + 1
	elseif rom[pc] == 0x57 then
		LD_D_A()
		print("LD D, A")
		pc = pc + 1
	elseif rom[pc] == 0x5f then
		LD_E_A()
		print("LD E, A")
		pc = pc + 1
	elseif rom[pc] == 0x67 then
		LD_H_A()
		print("LD H, A")
		pc = pc + 1
	elseif rom[pc] == 0x6f then
		LD_L_A()
		print("LD L, A")
		pc = pc + 1
	elseif rom[pc] == 0x02 then
		LD_BC_A()
		print("LD (BC), A")
		pc = pc + 1
	elseif rom[pc] == 0x12 then
		LD_DE_A()
		print("LD (DE), A")
		pc = pc + 1
	elseif rom[pc] == 0x77 then
		LD_HL_A()
		print("LD (HL), A")
		pc = pc + 1
	elseif rom[pc] == 0xea then
		LD_nn_A()
		print("LD (" .. toHex(rom[pc + 1]) .. "" .. u_toHex(pc + 2) .. "), A")
		pc = pc + 3
	elseif rom[pc] == 0xf2 then
		LD_A_iC()
		print("LD A, (C)")
		pc = pc + 1
	elseif rom[pc] == 0xe2 then
		LD_iC_A()
		print("LD ($FF00 .. C), A")
		pc = pc + 1
	elseif rom[pc] == 0x3a then
		LDD_A_HL()
		print("LD A, (HLD) or LD A, (HL-) or LDD A, (HL)")
		pc = pc + 1
	elseif rom[pc] == 0x32 then
		LDD_HL_A()
		print("LD (HLD), A or LD (HL-), A or LDD (HL), A")
		pc = pc + 1
	elseif rom[pc] == 0x2a then
		LDI_A_HL()
		print("LD A, (HLI) or LD A, (HL..) or LDI A, (HL)")
		pc = pc + 1
	elseif rom[pc] == 0x22 then
		LDI_HL_A()
		print("LD (HLI), LD A or LD (HL..), LDI A or (HL), A")
		pc = pc + 1
	elseif rom[pc] == 0xe0 then
		LDH_in_A()
		print("LDH ($FF00 .. " .. toHex(rom[pc + 1]) .. "), A")
		pc = pc + 2
	elseif rom[pc] == 0xf0 then
		LDH_A_in()
		print("LDH A, ($FF00 .. " .. toHex(rom[pc + 1]) .. ")")
		pc = pc + 2
	elseif rom[pc] == 0x01 then
		LD_BC_nn()
		print("LD BC, " .. toHex(rom[pc + 1]) .. u_toHex(pc + 2))
		pc = pc + 3
	elseif rom[pc] == 0x11 then
		LD_DE_nn()
		print("LD DE, " .. toHex(rom[pc + 1]) .. u_toHex(pc + 2))
		pc = pc + 3
	elseif rom[pc] == 0x21 then
		LD_HL_nn()
		print("LD HL, " .. toHex(rom[pc + 1]) .. u_toHex(pc + 2))
		pc = pc + 3
	elseif rom[pc] == 0x31 then
		LD_SP_nn()
		print("LD SP, " .. toHex(rom[pc + 1]) .. u_toHex(pc + 2))
		pc = pc + 3
	elseif rom[pc] == 0xf9 then
		LD_SP_HL()
		print("LD SP, HL")
		pc = pc + 1
	elseif rom[pc] == 0xf8 then
		LDHL_SP_n()
		print("LDHL SP, " .. toHex(rom[pc + 1]) .. " or LD HL, SP .. " .. toHex(rom[pc + 1]))
		pc = pc + 2
	elseif rom[pc] == 0x08 then
		LD_nn_SP()
		print("LD " .. toHex(rom[pc + 1]) .. u_toHex(pc + 2) .. ", SP")
		pc = pc + 3
	elseif rom[pc] == 0xf5 then
		PUSH_AF()
		print("PUSH AF")
		pc = pc + 1
	elseif rom[pc] == 0xc5 then
		PUSH_BC()
		print("PUSH BC")
		pc = pc + 1
	elseif rom[pc] == 0xd5 then
		PUSH_DE()
		print("PUSH DE")
		pc = pc + 1
	elseif rom[pc] == 0xe5 then
		PUSH_HL()
		print("PUSH HL")
		pc = pc + 1
	elseif rom[pc] == 0xf1 then
		POP_AF()
		print("POP AF")
		pc = pc + 1
	elseif rom[pc] == 0xc1 then
		POP_BC()
		print("POP BC")
		pc = pc + 1
	elseif rom[pc] == 0xd1 then
		POP_DE()
		print("POP DE")
		pc = pc + 1
	elseif rom[pc] == 0xe1 then
		POP_HL()
		print("POP HL")
		pc = pc + 1
	elseif rom[pc] == 0x87 then
		ADD_A_A()
		print("ADD A, A")
		pc = pc + 1
	elseif rom[pc] == 0x80 then
		ADD_A_B()
		print("ADD A, B")
		pc = pc + 1
	elseif rom[pc] == 0x81 then
		ADD_A_C()
		print("ADD A, C")
		pc = pc + 1
	elseif rom[pc] == 0x82 then
		ADD_A_D()
		print("ADD A, D")
		pc = pc + 1
	elseif rom[pc] == 0x83 then
		ADD_A_E()
		print("ADD A, E")
		pc = pc + 1
	elseif rom[pc] == 0x84 then
		ADD_A_H()
		print("ADD A, H")
		pc = pc + 1
	elseif rom[pc] == 0x85 then
		ADD_A_L()
		print("ADD A, L")
		pc = pc + 1
	elseif rom[pc] == 0x86 then
		ADD_A_HL()
		print("ADD A, (HL)")
		pc = pc + 1
	elseif rom[pc] == 0xc6 then
		ADD_A_n()
		print("ADD A, " .. toHex(rom[pc + 1]))
		pc = pc + 2
	elseif rom[pc] == 0x8f then
		ADC_A_A()
		print("ADC A, A")
		pc = pc + 1
	elseif rom[pc] == 0x88 then
		ADC_A_B()
		print("ADC A, B")
		pc = pc + 1
	elseif rom[pc] == 0x89 then
		ADC_A_C()
		print("ADC A, C")
		pc = pc + 1
	elseif rom[pc] == 0x8a then
		ADC_A_D()
		print("ADC A, D")
		pc = pc + 1
	elseif rom[pc] == 0x8b then
		ADC_A_E()
		print("ADC A, E")
		pc = pc + 1
	elseif rom[pc] == 0x8c then
		ADC_A_H()
		print("ADC A, H")
		pc = pc + 1
	elseif rom[pc] == 0x8d then
		ADC_A_L()
		print("ADC A, L")
		pc = pc + 1
	elseif rom[pc] == 0x8e then
		ADC_A_HL()
		print("ADC A, (HL)")
		pc = pc + 1
	elseif rom[pc] == 0xce then
		ADC_A_n()
		print("ADC A, " .. toHex(rom[pc + 1]))
		pc = pc + 2
	elseif rom[pc] == 0x97 then
		SUB_A()
		print("SUB A, A")
		pc = pc + 1
	elseif rom[pc] == 0x90 then
		SUB_B()
		print("SUB A, B")
		pc = pc + 1
	elseif rom[pc] == 0x91 then
		SUB_C()
		print("SUB A, C")
		pc = pc + 1
	elseif rom[pc] == 0x92 then
		SUB_D()
		print("SUB A, D")
		pc = pc + 1
	elseif rom[pc] == 0x93 then
		SUB_E()
		print("SUB A, E")
		pc = pc + 1
	elseif rom[pc] == 0x94 then
		SUB_H()
		print("SUB A, H")
		pc = pc + 1
	elseif rom[pc] == 0x95 then
		SUB_L()
		print("SUB A, L")
		pc = pc + 1
	elseif rom[pc] == 0x96 then
		SUB_HL()
		print("SUB A, (HL)")
		pc = pc + 1
	elseif rom[pc] == 0xd6 then
		SUB_n()
		print("SUB A, " .. toHex(rom[pc + 1]))
		pc = pc + 2
	elseif rom[pc] == 0x9f then
		SBC_A_A()
		print("SBC A, A")
		pc = pc + 1
	elseif rom[pc] == 0x98 then
		SBC_A_B()	
		print("SBC A, B")
		pc = pc + 1
	elseif rom[pc] == 0x99 then
		SBC_A_C()
		print("SBC A, C")
		pc = pc + 1
	elseif rom[pc] == 0x9a then
		SBC_A_D()
		print("SBC A, D")
		pc = pc + 1
	elseif rom[pc] == 0x9b then
		SBC_A_E()
		print("SBC A, E")
		pc = pc + 1
	elseif rom[pc] == 0x9c then
		SBC_A_H()
		print("SBC A, H")
		pc = pc + 1
	elseif rom[pc] == 0x9d then
		SBC_A_L()
		print("SBC A, L")
		pc = pc + 1
	elseif rom[pc] == 0x9e then
		SBC_A_HL()
		print("SBC A, (HL)")
		pc = pc + 1
	elseif rom[pc] == 0xde then
		SBC_A_n()
		print("SBC A, " .. toHex(rom[pc + 1]))
		pc = pc + 2
	elseif rom[pc] == 0xa7 then
		AND_A()
		print("AND A")
		pc = pc + 1
	elseif rom[pc] == 0xa0 then
		AND_B()
		print("AND B")
		pc = pc + 1
	elseif rom[pc] == 0xa1 then
		AND_C()
		print("AND C")
		pc = pc + 1
	elseif rom[pc] == 0xa2 then
		AND_D()
		print("AND D")
		pc = pc + 1
	elseif rom[pc] == 0xa3 then
		AND_E()
		print("AND E")
		pc = pc + 1
	elseif rom[pc] == 0xa4 then
		AND_H()
		print("AND H")
		pc = pc + 1
	elseif rom[pc] == 0xa5 then
		AND_L()
		print("AND L")
		pc = pc + 1
	elseif rom[pc] == 0xa6 then
		AND_HL()
		print("AND (HL)")
		pc = pc + 1
	elseif rom[pc] == 0xe6 then
		AND_n()
		print("AND " .. toHex(rom[pc + 1]))
		pc = pc + 2
	elseif rom[pc] == 0xb7 then
		OR_A()
		print("OR A")
		pc = pc + 1
	elseif rom[pc] == 0xb0 then
		OR_B()
		print("OR B")
		pc = pc + 1
	elseif rom[pc] == 0xb1 then
		OR_C()
		print("OR C")
		pc = pc + 1
	elseif rom[pc] == 0xb2 then
		OR_D()
		print("OR D")
		pc = pc + 1
	elseif rom[pc] == 0xb3 then
		OR_E()
		print("OR E")
		pc = pc + 1
	elseif rom[pc] == 0xb4 then
		OR_H()
		print("OR H")
		pc = pc + 1
	elseif rom[pc] == 0xb5 then
		OR_L()
		print("OR L")
		pc = pc + 1
	elseif rom[pc] == 0xb6 then
		OR_HL()
		print("OR (HL)")
		pc = pc + 1
	elseif rom[pc] == 0xf6 then
		OR_n()
		print("OR " .. toHex(rom[pc + 1]))
		pc = pc + 2
	elseif rom[pc] == 0xaf then
		XOR_A()
		print("XOR A")
		pc = pc + 1
	elseif rom[pc] == 0xa8 then
		XOR_B()
		print("XOR B")
		pc = pc + 1
	elseif rom[pc] == 0xa9 then
		XOR_C()
		print("XOR C")
		pc = pc + 1
	elseif rom[pc] == 0xaa then
		XOR_D()
		print("XOR D")
		pc = pc + 1
	elseif rom[pc] == 0xab then
		XOR_E()
		print("XOR E")
		pc = pc + 1
	elseif rom[pc] == 0xac then
		XOR_H()
		print("XOR H")
		pc = pc + 1
	elseif rom[pc] == 0xad then
		XOR_L()
		print("XOR L")
		pc = pc + 1
	elseif rom[pc] == 0xea then
		XOR_HL()
		print("XOR (HL)")
		pc = pc + 1
	elseif rom[pc] == 0xee then
		XOR_n()
		print("XOR " .. toHex(rom[pc + 1]))
		pc = pc + 2
	elseif rom[pc] == 0xbf then
		CP_A()
		print("CP A")
		pc = pc + 1
	elseif rom[pc] == 0xb8 then
		CP_B()
		print("CP B")
		pc = pc + 1
	elseif rom[pc] == 0xb9 then
		CP_C()
		print("CP C")
		pc = pc + 1
	elseif rom[pc] == 0xba then
		CP_D()
		print("CP D")
		pc = pc + 1
	elseif rom[pc] == 0xbb then
		CP_E()
		print("CP E")
		pc = pc + 1
	elseif rom[pc] == 0xbc then
		CP_H()
		print("CP H")
		pc = pc + 1
	elseif rom[pc] == 0xbd then
		CP_L()
		print("CP L")
		pc = pc + 1
	elseif rom[pc] == 0xbe then
		CP_HL()
		print("CP (HL)")
		pc = pc + 1
	elseif rom[pc] == 0xfe then
		CP_n()
		print("CP " .. toHex(rom[pc + 1]))
		pc = pc + 2
	elseif rom[pc] == 0x3c then
		INC_A()
		print("INC A")
		pc = pc + 1
	elseif rom[pc] == 0x04 then
		INC_B()
		print("INC B")
		pc = pc + 1
	elseif rom[pc] == 0x0c then
		INC_C()
		print("INC C")
		pc = pc + 1
	elseif rom[pc] == 0x14 then
		INC_D()
		print("INC D")
		pc = pc + 1
	elseif rom[pc] == 0x1c then
		INC_E()
		print("INC E")
		pc = pc + 1
	elseif rom[pc] == 0x24 then
		INC_H()
		print("INC H")
		pc = pc + 1
	elseif rom[pc] == 0x2c then
		INC_L()
		print("INC L")
		pc = pc + 1
	elseif rom[pc] == 0x34 then
		INC_HL()
		print("INC (HL)")
		pc = pc + 1
	elseif rom[pc] == 0x3d then
		DEC_A()
		print("DEC A")
		pc = pc + 1
	elseif rom[pc] == 0x05 then
		DEC_B()
		print("DEC B")
		pc = pc + 1
	elseif rom[pc] == 0x0d then
		DEC_C()
		print("DEC C")
		pc = pc + 1
	elseif rom[pc] == 0x15 then
		DEC_D()
		print("DEC D")
		pc = pc + 1
	elseif rom[pc] == 0x1d then
		DEC_E()
		print("DEC E")
		pc = pc + 1
	elseif rom[pc] == 0x25 then
		DEC_H()
		print("DEC H")
		pc = pc + 1
	elseif rom[pc] == 0x2d then
		DEC_L()
		print("DEC L")
		pc = pc + 1
	elseif rom[pc] == 0x35 then
		DEC_HL()
		print("DEC (HL)")
		pc = pc + 1
	elseif rom[pc] == 0x09 then
		print("ADD HL, BC")
		pc = pc + 1
	elseif rom[pc] == 0x19 then
		print("ADD HL, DE")
		pc = pc + 1
	elseif rom[pc] == 0x29 then
		print("ADD HL, HL")
		pc = pc + 1
	elseif rom[pc] == 0x39 then
		print("ADD HL, SP")
		pc = pc + 1
	elseif rom[pc] == 0xe8 then
		print("ADD SP, " .. toHex(pc + 1))
		pc = pc + 2
	elseif rom[pc] == 0x03 then
		print("INC BC")
		pc = pc + 1
	elseif rom[pc] == 0x13 then
		print("INC DE")
		pc = pc + 1
	elseif rom[pc] == 0x23 then
		print("INC HL")
		pc = pc + 1
	elseif rom[pc] == 0x33 then
		print("INC P")
		pc = pc + 1
	elseif rom[pc] == 0x0b then
		print("DEC BC")
		pc = pc + 1
	elseif rom[pc] == 0x1b then
		print("DEC DE")
		pc = pc + 1
	elseif rom[pc] == 0x2b then
		print("DEC HL")
		pc = pc + 1
	elseif rom[pc] == 0x3b then
		print("DEC SP")
		pc = pc + 1
	elseif rom[pc] == 0x27 then
		print("DAA")
		pc = pc + 1
	elseif rom[pc] == 0x2f then
		print("CPL")
		pc = pc + 1
	elseif rom[pc] == 0x3f then
		print("CCF")
		pc = pc + 1
	elseif rom[pc] == 0x37 then
		print("SCF")
		pc = pc + 1
	elseif rom[pc] == 0x00 then
		print("NOP")
		pc = pc + 1
	elseif rom[pc] == 0x76 then
		print("HALT")
		pc = pc + 1
	elseif rom[pc] == 0x10 then
		print("STOP")
		pc = pc + 1
	elseif rom[pc] == 0xf3 then
		print("DI")
		pc = pc + 1
	elseif rom[pc] == 0xfb then
		print("EI")
		pc = pc + 1
	elseif rom[pc] == 0x07 then
		print("RLCA")
		pc = pc + 1
	elseif rom[pc] == 0x17 then
		print("RLA")
		pc = pc + 1
	elseif rom[pc] == 0x0f then
		print("RRCA")
		pc = pc + 1
	elseif rom[pc] == 0x1f then
		print("RRA")
		pc = pc + 1
	elseif rom[pc] == 0xc3 then
		print("JP " .. toHex(rom[pc + 1]) .. u_toHex(pc + 2))
	elseif rom[pc] == 0xc2 then
		print("JP NZ, " .. toHex(rom[pc + 1]) .. u_toHex(pc + 2))
	elseif rom[pc] == 0xca then
		print("JP Z" .. toHex(rom[pc + 1]) .. u_toHex(pc + 2))
	elseif rom[pc] == 0xd2 then
		print("JP  NC" .. toHex(rom[pc + 1]) .. u_toHex(pc + 2))
	elseif rom[pc] == 0xda then
		print("JP  C" .. toHex(rom[pc + 1]) .. u_toHex(pc + 2))
	elseif rom[pc] == 0xe9 then
		print("JP (HL)")
	elseif rom[pc] == 0x18 then
		print("JR " .. toHex(rom[pc + 1]))
	elseif rom[pc] == 0x20 then
		print("JR NZ, " .. toHex(rom[pc + 1]))
	elseif rom[pc] == 0x28 then
		print("JR Z, " .. toHex(rom[pc + 1]))
	elseif rom[pc] == 0x30 then
		print("JR NC, " .. toHex(rom[pc + 1]))
	elseif rom[pc] == 0x38 then
		print("JR C, " .. toHex(rom[pc + 1]))
	elseif rom[pc] == 0xcd then
		print("CALL " .. toHex(rom[pc + 1]) .. u_toHex(pc + 2))
	elseif rom[pc] == 0xc4 then
		print("CALL NZ, " .. toHex(rom[pc + 1]) .. u_toHex(pc + 2))
	elseif rom[pc] == 0xcc then
		print("CALL Z, " .. toHex(rom[pc + 1]) .. u_toHex(pc + 2))
	elseif rom[pc] == 0xd4 then
		print("CALL NC, " .. toHex(rom[pc + 1]) .. u_toHex(pc + 2))
	elseif rom[pc] == 0xdc then
		print("CALL C, " .. toHex(rom[pc + 1]) .. u_toHex(pc + 2))
	elseif rom[pc] == 0xc7 then
		print("RST 00H")
	elseif rom[pc] == 0xcf then
		print("RST 08H")
	elseif rom[pc] == 0xd7 then
		print("RST 10H")
	elseif rom[pc] == 0xdf then
		print("RST 18H")
	elseif rom[pc] == 0xe7 then
		print("RST 20H")
	elseif rom[pc] == 0xef then
		print("RST 28H")
	elseif rom[pc] == 0xf7 then
		print("RST 30H")
	elseif rom[pc] == 0xff then
		print("RST 38H")
	elseif rom[pc] == 0xc9 then
		print("RET")
	elseif rom[pc] == 0xc0 then
		print("RET NZ")
	elseif rom[pc] == 0xc8 then
		print("RET Z")
	elseif rom[pc] == 0xd0 then
		print("RET NC")
	elseif rom[pc] == 0xd8 then
		print("RET C")
	elseif rom[pc] == 0xd9 then
		print("RETI")
	elseif rom[pc] == 0xfc then
		print("0xfc in an undocumented opcode and should not be used!")
		pc = pc + 1
	elseif rom[pc] == 0xcb then
		if rom[pc + 1] == 0x37 then
			print("SWAP A")
		elseif rom[pc + 1] == 0x30 then
			print("SWAP B")
		elseif rom[pc + 1] == 0x31 then
			print("SWAP C")
		elseif rom[pc + 1] == 0x32 then
			print("SWAP D")
		elseif rom[pc + 1] == 0x33 then
			print("SWAP E")
		elseif rom[pc + 1] == 0x34 then
			print("SWAP H")
		elseif rom[pc + 1] == 0x35 then
			print("SWAP L")
		elseif rom[pc + 1] == 0x36 then
			print("SWAP (HL)")
		elseif rom[pc + 1] == 0x07 then
			print("RLC A")
		elseif rom[pc + 1] == 0x00 then
			print("RLC B")
		elseif rom[pc + 1] == 0x01 then
			print("RLC C")
		elseif rom[pc + 1] == 0x02 then
			print("RLC D")
		elseif rom[pc + 1] == 0x03 then
			print("RLC E")
		elseif rom[pc + 1] == 0x04 then
			print("RLC H")
		elseif rom[pc + 1] == 0x05 then
			print("RLC L")
		elseif rom[pc + 1] == 0x06 then
			print("RLC (HL)")
		elseif rom[pc + 1] == 0x17 then
			print("RL A")
		elseif rom[pc + 1] == 0x10 then
			print("RL B")
		elseif rom[pc + 1] == 0x11 then
			print("RL C")
		elseif rom[pc + 1] == 0x12 then
			print("RL D")
		elseif rom[pc + 1] == 0x13 then
			print("RL E")
		elseif rom[pc + 1] == 0x14 then
			print("RL H")
		elseif rom[pc + 1] == 0x15 then
			print("RL L")
		elseif rom[pc + 1] == 0x16 then
			print("RL (HL)")
		elseif rom[pc + 1] == 0x0f then
			print("RRC A")
		elseif rom[pc + 1] == 0x08 then
			print("RRC B")
		elseif rom[pc + 1] == 0x09 then
			print("RRC C")
		elseif rom[pc + 1] == 0x0a then
			print("RRC D")
		elseif rom[pc + 1] == 0x0b then
			print("RRC E")
		elseif rom[pc + 1] == 0x0c then
			print("RRC H")
		elseif rom[pc + 1] == 0x0d then
			print("RRC L")
		elseif rom[pc + 1] == 0x0e then
			print("RRC (HL)")
		elseif rom[pc + 1] == 0x1f then
			print("RR A")
		elseif rom[pc + 1] == 0x18 then
			print("RR B")
		elseif rom[pc + 1] == 0x19 then
			print("RR C")
		elseif rom[pc + 1] == 0x1a then
			print("RR D")
		elseif rom[pc + 1] == 0x1b then
			print("RR E")
		elseif rom[pc + 1] == 0x1c then
			print("RR H")
		elseif rom[pc + 1] == 0x1d then
			print("RR L")
		elseif rom[pc + 1] == 0x1e then
			print("RR (HL)")
		elseif rom[pc + 1] == 0x27 then
			print("SLA A")
		elseif rom[pc + 1] == 0x20 then
			print("SLA B")
		elseif rom[pc + 1] == 0x21 then
			print("SLA C")
		elseif rom[pc + 1] == 0x22 then
			print("SLA D")
		elseif rom[pc + 1] == 0x23 then
			print("SLA E")
		elseif rom[pc + 1] == 0x24 then
			print("SLA H")
		elseif rom[pc + 1] == 0x25 then
			print("SLA L")
		elseif rom[pc + 1] == 0x26 then
			print("SLA (HL)")
		elseif rom[pc + 1] == 0x2f then
			print("SRA A")
		elseif rom[pc + 1] == 0x28 then
			print("SRA B")
		elseif rom[pc + 1] == 0x29 then
			print("SRA C")
		elseif rom[pc + 1] == 0x2a then
			print("SRA D")
		elseif rom[pc + 1] == 0x2b then
			print("SRA E")
		elseif rom[pc + 1] == 0x2c then
			print("SRA H")
		elseif rom[pc + 1] == 0x2d then
			print("SRA L")
		elseif rom[pc + 1] == 0x2e then
			print("SRA (HL)")
		elseif rom[pc + 1] == 0x3f then
			print("SRL A")
		elseif rom[pc + 1] == 0x38 then
			print("SRL B")
		elseif rom[pc + 1] == 0x39 then
			print("SRL C")
		elseif rom[pc + 1] == 0x3a then
			print("SRL D")
		elseif rom[pc + 1] == 0x3b then
			print("SRL E")
		elseif rom[pc + 1] == 0x3c then
			print("SRL H")
		elseif rom[pc + 1] == 0x3d then
			print("SRL L")
		elseif rom[pc + 1] == 0x3e then
			print("SRL (HL)")
		elseif rom[pc + 1] == 0x47 then
			print("BIT " .. toHex(pc + 2) .. ", A")
			pc = pc + 1
		elseif rom[pc + 1] == 0x40 then
			print("BIT " .. toHex(pc + 2) .. ", B")
			pc = pc + 1
		elseif rom[pc + 1] == 0x41 then
			print("BIT " .. toHex(pc + 2) .. ", C")
			pc = pc + 1
		elseif rom[pc + 1] == 0x42 then
			print("BIT " .. toHex(pc + 2) .. ", D")
			pc = pc + 1
		elseif rom[pc + 1] == 0x43 then
			print("BIT " .. toHex(pc + 2) .. ", E")
			pc = pc + 1
		elseif rom[pc + 1] == 0x44 then
			print("BIT " .. toHex(pc + 2) .. ", H")
			pc = pc + 1
		elseif rom[pc + 1] == 0x45 then
			print("BIT " .. toHex(pc + 2) .. ", L")
			pc = pc + 1
		elseif rom[pc + 1] == 0x46 then
			print("BIT " .. toHex(pc + 2) .. ", (HL)")
			pc = pc + 1
		elseif rom[pc + 1] == 0xc7 then
			print("SET " .. toHex(pc + 2) .. ", A")
			pc = pc + 1
		elseif rom[pc + 1] == 0xc0 then
			print("SET " .. toHex(pc + 2) .. ", B")
			pc = pc + 1
		elseif rom[pc + 1] == 0xc1 then
			print("SET " .. toHex(pc + 2) .. ", C")
			pc = pc + 1
		elseif rom[pc + 1] == 0xc2 then
			print("SET " .. toHex(pc + 2) .. ", D")
			pc = pc + 1
		elseif rom[pc + 1] == 0xc3 then
			print("SET " .. toHex(pc + 2) .. ", E")
			pc = pc + 1
		elseif rom[pc + 1] == 0xc4 then
			print("SET " .. toHex(pc + 2) .. ", H")
			pc = pc + 1
		elseif rom[pc + 1] == 0xc5 then
			print("SET " .. toHex(pc + 2) .. ", L")
			pc = pc + 1
		elseif rom[pc + 1] == 0xc6 then
			print("SET " .. toHex(pc + 2) .. ", (HL)")
			pc = pc + 1
		elseif rom[pc + 1] == 0x87 then
			print("RES " .. toHex(pc + 2) .. ", A")
			pc = pc + 1
		elseif rom[pc + 1] == 0x80 then
			print("RES " .. toHex(pc + 2) .. ", B")
			pc = pc + 1
		elseif rom[pc + 1] == 0x81 then
			print("RES " .. toHex(pc + 2) .. ", C")
			pc = pc + 1
		elseif rom[pc + 1] == 0x82 then
			print("RES " .. toHex(pc + 2) .. ", D")
			pc = pc + 1
		elseif rom[pc + 1] == 0x83 then
			print("RES " .. toHex(pc + 2) .. ", E")
			pc = pc + 1
		elseif rom[pc + 1] == 0x84 then
			print("RES " .. toHex(pc + 2) .. ", H")
			pc = pc + 1
		elseif rom[pc + 1] == 0x85 then
			print("RES " .. toHex(pc + 2) .. ", L")
			pc = pc + 1
		elseif rom[pc + 1] == 0x86 then
			print("RES " .. toHex(pc + 2) .. ", (HL)")
			pc = pc + 1
		else
			print(toHex(rom[pc + 1]) .. " is not an opcode with the prefix CB!")
		end

		pc = pc + 2
	else
		print(toHex(rom[pc]) .. " is not handled")
		pc = pc + 1
	end
end