command = ""

function log (str)
	command = str

	--print(str)
end

function dispatcher ()
	log(toHex(pc) .. ": ")

	if memory[pc] == 0x06 then
		LD_B_n(memory[pc + 1])
		log("LD B, " .. toHex(memory[pc + 1]))
		pc = pc + 2
	elseif memory[pc] == 0x0e then
		LD_C_n(memory[pc + 1])
		log("LD C, " .. toHex(memory[pc + 1]))
		pc = pc + 2
	elseif memory[pc] == 0x16 then
		LD_D_n(memory[pc + 1])
		log("LD D, " .. toHex(memory[pc + 1]))
		pc = pc + 2
	elseif memory[pc] == 0x1e then
		LD_E_n(memory[pc + 1])
		log("LD E, " .. toHex(memory[pc + 1]))
		pc = pc + 2
	elseif memory[pc] == 0x26 then
		LD_H_n(memory[pc + 1])
		log("LD H, " .. toHex(memory[pc + 1]))
		pc = pc + 2
	elseif memory[pc] == 0x2e then
		LD_L_n(memory[pc + 1])
		log("LD L, " .. toHex(memory[pc + 1]))
		pc = pc + 2
	elseif memory[pc] == 0x7f then
		LD_A_A()
		log("LD A, A")
		pc = pc + 1
	elseif memory[pc] == 0x78 then
		LD_A_B()
		log("LD A, B")
		pc = pc + 1
	elseif memory[pc] == 0x79 then
		LD_A_C()
		log("LD A, C")
		pc = pc + 1
	elseif memory[pc] == 0x7a then
		LD_A_D()
		log("LD A, D")
		pc = pc + 1
	elseif memory[pc] == 0x7b then
		LD_A_E()
		log("LD A, E")
		pc = pc + 1
	elseif memory[pc] == 0x7c then
		LD_A_H()
		log("LD A, H")
		pc = pc + 1
	elseif memory[pc] == 0x7d then
		LD_A_L()
		log("LD A, L")
		pc = pc +1
	elseif memory[pc] == 0x7e then
		LD_A_HL()
		log("LD A, (HL)")
		pc = pc + 1
	elseif memory[pc] == 0x40 then
		LD_B_B()
		log("LD B, B")
		pc = pc + 1
	elseif memory[pc] == 0x41 then
		LD_B_C()
		log("LD B, C")
		pc = pc + 1
	elseif memory[pc] == 0x42 then
		LD_B_D()
		log("LD B, D")
		pc = pc + 1
	elseif memory[pc] == 0x43 then
		LD_B_E()
		log("LD B, E")
		pc = pc + 1
	elseif memory[pc] == 0x44 then
		LD_B_H()
		log("LD B, H")
		pc = pc + 1
	elseif memory[pc] == 0x45 then
		LD_B_L()
		log("LD B, L")
		pc = pc + 1
	elseif memory[pc] == 0x46 then
		LD_B_HL()
		log("LD B, (HL)")
		pc = pc + 1
	elseif memory[pc] == 0x48 then
		LD_C_B()
		log("LD C, B")
		pc = pc + 1
	elseif memory[pc] == 0x49 then
		LD_C_C()
		log("LD C, C")
		pc = pc + 1
	elseif memory[pc] == 0x4a then
		LD_C_D()
		log("LD C, D")
		pc = pc + 1
	elseif memory[pc] == 0x4b then
		LD_C_E()
		log("LD C, E")
		pc = pc + 1
	elseif memory[pc] == 0x4c then
		LD_C_H()
		log("LD C, H")
		pc = pc + 1
	elseif memory[pc] == 0x4d then
		LD_C_L()
		log("LD C, L")
		pc = pc + 1
	elseif memory[pc] == 0x4e then
		LD_C_HL()
		log("LD C, (HL)")
		pc = pc + 1
	elseif memory[pc] == 0x50 then
		LD_D_B()
		log("LD D, B")
		pc = pc + 1
	elseif memory[pc] == 0x51 then
		LD_D_C()
		log("LD D, C")
		pc = pc + 1
	elseif memory[pc] == 0x52 then
		LD_D_D()
		log("LD D, D")
		pc = pc + 1
	elseif memory[pc] == 0x53 then
		LD_D_E()
		log("LD D, E")
		pc = pc + 1
	elseif memory[pc] == 0x54 then
		LD_D_H()
		log("LD D, H")
		pc = pc + 1
	elseif memory[pc] == 0x55 then
		LD_D_L()
		log("LD D, L")
		pc = pc + 1
	elseif memory[pc] == 0x56 then
		LD_D_HL()
		log("LD D, (HL)")
		pc = pc + 1
	elseif memory[pc] == 0x58 then
		LD_E_B()
		log("LD E, B")
		pc = pc + 1
	elseif memory[pc] == 0x59 then
		LD_E_C()
		log("LD E, C")
		pc = pc + 1
	elseif memory[pc] == 0x5a then
		LD_E_D()
		log("LD E, D")
		pc = pc + 1
	elseif memory[pc] == 0x5b then
		LD_E_E()
		log("LD E, E")
		pc = pc + 1
	elseif memory[pc] == 0x5c then
		LD_E_H()
		log("LD E, H")
		pc = pc + 1
	elseif memory[pc] == 0x5d then
		LD_E_L()
		log("LD E, L")
		pc = pc + 1
	elseif memory[pc] == 0x5e then
		LD_E_HL()
		log("LD E, (HL)")
		pc = pc + 1
	elseif memory[pc] == 0x60 then
		LD_H_B()
		log("LD H, B")
		pc = pc + 1
	elseif memory[pc] == 0x61 then
		LD_H_C()
		log("LD H, C")
		pc = pc + 1
	elseif memory[pc] == 0x62 then
		LD_H_D()
		log("LD H, D")
		pc = pc + 1
	elseif memory[pc] == 0x63 then
		LD_H_E()
		log("LD H, E")
		pc = pc + 1
	elseif memory[pc] == 0x64 then
		LD_H_H()
		log("LD H, H")
		pc = pc + 1
	elseif memory[pc] == 0x65 then
		LD_H_L()
		log("LD H, L")
		pc = pc + 1
	elseif memory[pc] == 0x66 then
		LD_H_HL()
		log("LD H, (HL)")
		pc = pc + 1
	elseif memory[pc] == 0x68 then
		LD_L_B()
		log("LD L, B")
		pc = pc + 1
	elseif memory[pc] == 0x69 then
		LD_L_C()
		log("LD L, C")
		pc = pc + 1
	elseif memory[pc] == 0x6a then
		LD_L_D()
		log("LD L, D")
		pc = pc + 1
	elseif memory[pc] == 0x6b then
		LD_L_E()
		log("LD L, E")
		pc = pc + 1
	elseif memory[pc] == 0x6c then
		LD_L_H()
		log("LD L, H")
		pc = pc + 1
	elseif memory[pc] == 0x6d then
		LD_L_L()
		log("LD L, L")
		pc = pc + 1
	elseif memory[pc] == 0x6e then
		LD_L_HL()
		log("LD L, (HL)")
		pc = pc + 1
	elseif memory[pc] == 0x70 then
		LD_HL_B()
		log("LD (HL), B")
		pc = pc + 1
	elseif memory[pc] == 0x71 then
		LD_HL_C()
		log("LD (HL), C")
		pc = pc + 1
	elseif memory[pc] == 0x72 then
		LD_HL_D()
		log("LD (HL), D")
		pc = pc + 1
	elseif memory[pc] == 0x73 then
		LD_HL_E()
		log("LD (HL), E")
		pc = pc + 1
	elseif memory[pc] == 0x74 then
		LD_HL_H()
		log("LD (HL), H")
		pc = pc + 1
	elseif memory[pc] == 0x75 then
		LD_HL_L()
		log("LD (HL), L")
		pc = pc + 1
	elseif memory[pc] == 0x36 then
		LD_HL_n(memory[pc + 1])
		log("LD (HL), " .. toHex(memory[pc + 1]))
		pc = pc + 2
	elseif memory[pc] == 0x0a then
		LD_A_BC()
		log("LD A, (BC)")
		pc = pc + 1
	elseif memory[pc] == 0x1a then
		LD_A_DE()
		log("LD A, (DE)")
		pc = pc + 1
	elseif memory[pc] == 0x7e then
		LD_A_HL()
		log("LD A, (HL)")
		pc = pc + 1
	elseif memory[pc] == 0xfa then
		LD_A_nn(to16n(memory[pc + 1], memory[pc + 2]))
		log("LD A, " .. toHex(memory[pc + 1]) .. u_toHex(pc + 2))
		pc = pc + 3
	elseif memory[pc] == 0x3e then
		LD_A_n(memory[pc + 1])
		log("LD A, " .. toHex(memory[pc + 1]))
		pc = pc + 2
	elseif memory[pc] == 0x47 then
		LD_B_A()
		log("LD B, A")
		pc = pc + 1
	elseif memory[pc] == 0x4f then
		LD_C_A()
		log("LD C, A")
		pc = pc + 1
	elseif memory[pc] == 0x57 then
		LD_D_A()
		log("LD D, A")
		pc = pc + 1
	elseif memory[pc] == 0x5f then
		LD_E_A()
		log("LD E, A")
		pc = pc + 1
	elseif memory[pc] == 0x67 then
		LD_H_A()
		log("LD H, A")
		pc = pc + 1
	elseif memory[pc] == 0x6f then
		LD_L_A()
		log("LD L, A")
		pc = pc + 1
	elseif memory[pc] == 0x02 then
		LD_BC_A()
		log("LD (BC), A")
		pc = pc + 1
	elseif memory[pc] == 0x12 then
		LD_DE_A()
		log("LD (DE), A")
		pc = pc + 1
	elseif memory[pc] == 0x77 then
		LD_HL_A()
		log("LD (HL), A")
		pc = pc + 1
	elseif memory[pc] == 0xea then
		LD_nn_A(to16b(memory[pc + 1], memory[pc + 2]))
		log("LD (" .. toHex(memory[pc + 1]) .. "" .. u_toHex(pc + 2) .. "), A")
		pc = pc + 3
	elseif memory[pc] == 0xf2 then
		LD_A_iC()
		log("LD A, (C)")
		pc = pc + 1
	elseif memory[pc] == 0xe2 then
		LD_iC_A()
		log("LD ($FF00 .. C), A")
		pc = pc + 1
	elseif memory[pc] == 0x3a then
		LDD_A_HL()
		log("LD A, (HLD) or LD A, (HL-) or LDD A, (HL)")
		pc = pc + 1
	elseif memory[pc] == 0x32 then
		LDD_HL_A()
		log("LD (HLD), A or LD (HL-), A or LDD (HL), A")
		pc = pc + 1
	elseif memory[pc] == 0x2a then
		LDI_A_HL()
		log("LD A, (HLI) or LD A, (HL..) or LDI A, (HL)")
		pc = pc + 1
	elseif memory[pc] == 0x22 then
		LDI_HL_A()
		log("LD (HLI), LD A or LD (HL..), LDI A or (HL), A")
		pc = pc + 1
	elseif memory[pc] == 0xe0 then
		LDH_in_A(memory[pc + 1])
		log("LDH ($FF00 + " .. toHex(memory[pc + 1]) .. "), A")
		pc = pc + 2
	elseif memory[pc] == 0xf0 then
		LDH_A_in(memory[pc + 1])
		log("LDH A, ($FF00 + " .. toHex(memory[pc + 1]) .. ")")
		pc = pc + 2
	elseif memory[pc] == 0x01 then
		LD_BC_nn(to16b(memory[pc + 1], memory[pc + 2]))
		log("LD BC, " .. toHex(memory[pc + 1]) .. u_toHex(pc + 2))
		pc = pc + 3
	elseif memory[pc] == 0x11 then
		LD_DE_nn(to16b(memory[pc + 1], memory[pc + 2]))
		log("LD DE, " .. toHex(memory[pc + 1]) .. u_toHex(pc + 2))
		pc = pc + 3
	elseif memory[pc] == 0x21 then
		LD_HL_nn(to16b(memory[pc + 1], memory[pc + 2]))
		log("LD HL, " .. toHex(memory[pc + 1]) .. u_toHex(pc + 2))
		pc = pc + 3
	elseif memory[pc] == 0x31 then
		LD_SP_nn(to16b(memory[pc + 1], memory[pc + 2]))
		log("LD SP, " .. toHex(memory[pc + 1]) .. u_toHex(pc + 2))
		pc = pc + 3
	elseif memory[pc] == 0xf9 then
		LD_SP_HL()
		log("LD SP, HL")
		pc = pc + 1
	elseif memory[pc] == 0xf8 then
		LDHL_SP_n(memory[pc + 1])
		log("LDHL SP, " .. toHex(memory[pc + 1]) .. " or LD HL, SP .. " .. toHex(memory[pc + 1]))
		pc = pc + 2
	elseif memory[pc] == 0x08 then
		LD_nn_SP(to16b(memory[pc + 1], memory[pc + 2]))
		log("LD " .. toHex(memory[pc + 1]) .. u_toHex(pc + 2) .. ", SP")
		pc = pc + 3
	elseif memory[pc] == 0xf5 then
		PUSH_AF()
		log("PUSH AF")
		pc = pc + 1
	elseif memory[pc] == 0xc5 then
		PUSH_BC()
		log("PUSH BC")
		pc = pc + 1
	elseif memory[pc] == 0xd5 then
		PUSH_DE()
		log("PUSH DE")
		pc = pc + 1
	elseif memory[pc] == 0xe5 then
		PUSH_HL()
		log("PUSH HL")
		pc = pc + 1
	elseif memory[pc] == 0xf1 then
		POP_AF()
		log("POP AF")
		pc = pc + 1
	elseif memory[pc] == 0xc1 then
		POP_BC()
		log("POP BC")
		pc = pc + 1
	elseif memory[pc] == 0xd1 then
		POP_DE()
		log("POP DE")
		pc = pc + 1
	elseif memory[pc] == 0xe1 then
		POP_HL()
		log("POP HL")
		pc = pc + 1
	elseif memory[pc] == 0x87 then
		ADD_A_A()
		log("ADD A, A")
		pc = pc + 1
	elseif memory[pc] == 0x80 then
		ADD_A_B()
		log("ADD A, B")
		pc = pc + 1
	elseif memory[pc] == 0x81 then
		ADD_A_C()
		log("ADD A, C")
		pc = pc + 1
	elseif memory[pc] == 0x82 then
		ADD_A_D()
		log("ADD A, D")
		pc = pc + 1
	elseif memory[pc] == 0x83 then
		ADD_A_E()
		log("ADD A, E")
		pc = pc + 1
	elseif memory[pc] == 0x84 then
		ADD_A_H()
		log("ADD A, H")
		pc = pc + 1
	elseif memory[pc] == 0x85 then
		ADD_A_L()
		log("ADD A, L")
		pc = pc + 1
	elseif memory[pc] == 0x86 then
		ADD_A_HL()
		log("ADD A, (HL)")
		pc = pc + 1
	elseif memory[pc] == 0xc6 then
		ADD_A_n(memory[pc + 1])
		log("ADD A, " .. toHex(memory[pc + 1]))
		pc = pc + 2
	elseif memory[pc] == 0x8f then
		ADC_A_A()
		log("ADC A, A")
		pc = pc + 1
	elseif memory[pc] == 0x88 then
		ADC_A_B()
		log("ADC A, B")
		pc = pc + 1
	elseif memory[pc] == 0x89 then
		ADC_A_C()
		log("ADC A, C")
		pc = pc + 1
	elseif memory[pc] == 0x8a then
		ADC_A_D()
		log("ADC A, D")
		pc = pc + 1
	elseif memory[pc] == 0x8b then
		ADC_A_E()
		log("ADC A, E")
		pc = pc + 1
	elseif memory[pc] == 0x8c then
		ADC_A_H()
		log("ADC A, H")
		pc = pc + 1
	elseif memory[pc] == 0x8d then
		ADC_A_L()
		log("ADC A, L")
		pc = pc + 1
	elseif memory[pc] == 0x8e then
		ADC_A_HL()
		log("ADC A, (HL)")
		pc = pc + 1
	elseif memory[pc] == 0xce then
		ADC_A_n(memory[pc + 1])
		log("ADC A, " .. toHex(memory[pc + 1]))
		pc = pc + 2
	elseif memory[pc] == 0x97 then
		SUB_A()
		log("SUB A, A")
		pc = pc + 1
	elseif memory[pc] == 0x90 then
		SUB_B()
		log("SUB A, B")
		pc = pc + 1
	elseif memory[pc] == 0x91 then
		SUB_C()
		log("SUB A, C")
		pc = pc + 1
	elseif memory[pc] == 0x92 then
		SUB_D()
		log("SUB A, D")
		pc = pc + 1
	elseif memory[pc] == 0x93 then
		SUB_E()
		log("SUB A, E")
		pc = pc + 1
	elseif memory[pc] == 0x94 then
		SUB_H()
		log("SUB A, H")
		pc = pc + 1
	elseif memory[pc] == 0x95 then
		SUB_L()
		log("SUB A, L")
		pc = pc + 1
	elseif memory[pc] == 0x96 then
		SUB_HL()
		log("SUB A, (HL)")
		pc = pc + 1
	elseif memory[pc] == 0xd6 then
		SUB_n(memory[pc + 1])
		log("SUB A, " .. toHex(memory[pc + 1]))
		pc = pc + 2
	elseif memory[pc] == 0x9f then
		SBC_A_A()
		log("SBC A, A")
		pc = pc + 1
	elseif memory[pc] == 0x98 then
		SBC_A_B()
		log("SBC A, B")
		pc = pc + 1
	elseif memory[pc] == 0x99 then
		SBC_A_C()
		log("SBC A, C")
		pc = pc + 1
	elseif memory[pc] == 0x9a then
		SBC_A_D()
		log("SBC A, D")
		pc = pc + 1
	elseif memory[pc] == 0x9b then
		SBC_A_E()
		log("SBC A, E")
		pc = pc + 1
	elseif memory[pc] == 0x9c then
		SBC_A_H()
		log("SBC A, H")
		pc = pc + 1
	elseif memory[pc] == 0x9d then
		SBC_A_L()
		log("SBC A, L")
		pc = pc + 1
	elseif memory[pc] == 0x9e then
		SBC_A_HL()
		log("SBC A, (HL)")
		pc = pc + 1
	elseif memory[pc] == 0xde then
		SBC_A_n(memory[pc + 1])
		log("SBC A, " .. toHex(memory[pc + 1]))
		pc = pc + 2
	elseif memory[pc] == 0xa7 then
		AND_A()
		log("AND A")
		pc = pc + 1
	elseif memory[pc] == 0xa0 then
		AND_B()
		log("AND B")
		pc = pc + 1
	elseif memory[pc] == 0xa1 then
		AND_C()
		log("AND C")
		pc = pc + 1
	elseif memory[pc] == 0xa2 then
		AND_D()
		log("AND D")
		pc = pc + 1
	elseif memory[pc] == 0xa3 then
		AND_E()
		log("AND E")
		pc = pc + 1
	elseif memory[pc] == 0xa4 then
		AND_H()
		log("AND H")
		pc = pc + 1
	elseif memory[pc] == 0xa5 then
		AND_L()
		log("AND L")
		pc = pc + 1
	elseif memory[pc] == 0xa6 then
		AND_HL()
		log("AND (HL)")
		pc = pc + 1
	elseif memory[pc] == 0xe6 then
		AND_n(memory[pc + 1])
		log("AND " .. toHex(memory[pc + 1]))
		pc = pc + 2
	elseif memory[pc] == 0xb7 then
		OR_A()
		log("OR A")
		pc = pc + 1
	elseif memory[pc] == 0xb0 then
		OR_B()
		log("OR B")
		pc = pc + 1
	elseif memory[pc] == 0xb1 then
		OR_C()
		log("OR C")
		pc = pc + 1
	elseif memory[pc] == 0xb2 then
		OR_D()
		log("OR D")
		pc = pc + 1
	elseif memory[pc] == 0xb3 then
		OR_E()
		log("OR E")
		pc = pc + 1
	elseif memory[pc] == 0xb4 then
		OR_H()
		log("OR H")
		pc = pc + 1
	elseif memory[pc] == 0xb5 then
		OR_L()
		log("OR L")
		pc = pc + 1
	elseif memory[pc] == 0xb6 then
		OR_HL()
		log("OR (HL)")
		pc = pc + 1
	elseif memory[pc] == 0xf6 then
		OR_n(memory[pc + 1])
		log("OR " .. toHex(memory[pc + 1]))
		pc = pc + 2
	elseif memory[pc] == 0xaf then
		XOR_A()
		log("XOR A")
		pc = pc + 1
	elseif memory[pc] == 0xa8 then
		XOR_B()
		log("XOR B")
		pc = pc + 1
	elseif memory[pc] == 0xa9 then
		XOR_C()
		log("XOR C")
		pc = pc + 1
	elseif memory[pc] == 0xaa then
		XOR_D()
		log("XOR D")
		pc = pc + 1
	elseif memory[pc] == 0xab then
		XOR_E()
		log("XOR E")
		pc = pc + 1
	elseif memory[pc] == 0xac then
		XOR_H()
		log("XOR H")
		pc = pc + 1
	elseif memory[pc] == 0xad then
		XOR_L()
		log("XOR L")
		pc = pc + 1
	elseif memory[pc] == 0xea then
		XOR_HL()
		log("XOR (HL)")
		pc = pc + 1
	elseif memory[pc] == 0xee then
		XOR_n(memory[pc + 1])
		log("XOR " .. toHex(memory[pc + 1]))
		pc = pc + 2
	elseif memory[pc] == 0xbf then
		CP_A()
		log("CP A")
		pc = pc + 1
	elseif memory[pc] == 0xb8 then
		CP_B()
		log("CP B")
		pc = pc + 1
	elseif memory[pc] == 0xb9 then
		CP_C()
		log("CP C")
		pc = pc + 1
	elseif memory[pc] == 0xba then
		CP_D()
		log("CP D")
		pc = pc + 1
	elseif memory[pc] == 0xbb then
		CP_E()
		log("CP E")
		pc = pc + 1
	elseif memory[pc] == 0xbc then
		CP_H()
		log("CP H")
		pc = pc + 1
	elseif memory[pc] == 0xbd then
		CP_L()
		log("CP L")
		pc = pc + 1
	elseif memory[pc] == 0xbe then
		CP_HL()
		log("CP (HL)")
		pc = pc + 1
	elseif memory[pc] == 0xfe then
		CP_n(memory[pc + 1])
		log("CP " .. toHex(memory[pc + 1]))
		pc = pc + 2
	elseif memory[pc] == 0x3c then
		INC_A()
		log("INC A")
		pc = pc + 1
	elseif memory[pc] == 0x04 then
		INC_B()
		log("INC B")
		pc = pc + 1
	elseif memory[pc] == 0x0c then
		INC_C()
		log("INC C")
		pc = pc + 1
	elseif memory[pc] == 0x14 then
		INC_D()
		log("INC D")
		pc = pc + 1
	elseif memory[pc] == 0x1c then
		INC_E()
		log("INC E")
		pc = pc + 1
	elseif memory[pc] == 0x24 then
		INC_H()
		log("INC H")
		pc = pc + 1
	elseif memory[pc] == 0x2c then
		INC_L()
		log("INC L")
		pc = pc + 1
	elseif memory[pc] == 0x34 then
		INC_HL()
		log("INC (HL)")
		pc = pc + 1
	elseif memory[pc] == 0x3d then
		DEC_A()
		log("DEC A")
		pc = pc + 1
	elseif memory[pc] == 0x05 then
		DEC_B()
		log("DEC B")
		pc = pc + 1
	elseif memory[pc] == 0x0d then
		DEC_C()
		log("DEC C")
		pc = pc + 1
	elseif memory[pc] == 0x15 then
		DEC_D()
		log("DEC D")
		pc = pc + 1
	elseif memory[pc] == 0x1d then
		DEC_E()
		log("DEC E")
		pc = pc + 1
	elseif memory[pc] == 0x25 then
		DEC_H()
		log("DEC H")
		pc = pc + 1
	elseif memory[pc] == 0x2d then
		DEC_L()
		log("DEC L")
		pc = pc + 1
	elseif memory[pc] == 0x35 then
		DEC_HL()
		log("DEC (HL)")
		pc = pc + 1
	elseif memory[pc] == 0x09 then
		ADD_HL_BC()
		log("ADD HL, BC")
		pc = pc + 1
	elseif memory[pc] == 0x19 then
		ADD_HL_DE()
		log("ADD HL, DE")
		pc = pc + 1
	elseif memory[pc] == 0x29 then
		ADD_HL_HL()
		log("ADD HL, HL")
		pc = pc + 1
	elseif memory[pc] == 0x39 then
		ADD_HL_SP()
		log("ADD HL, SP")
		pc = pc + 1
	elseif memory[pc] == 0xe8 then
		ADD_SP_n(memory[pc + 1])
		log("ADD SP, " .. toHex(pc + 1))
		pc = pc + 2
	elseif memory[pc] == 0x03 then
		INC_BC()
		log("INC BC")
		pc = pc + 1
	elseif memory[pc] == 0x13 then
		INC_DE()
		log("INC DE")
		pc = pc + 1
	elseif memory[pc] == 0x23 then
		INC_HL()
		log("INC HL")
		pc = pc + 1
	elseif memory[pc] == 0x33 then
		INC_PC()
		log("INC PC")
		pc = pc + 1
	elseif memory[pc] == 0x0b then
		DEC_BC()
		log("DEC BC")
		pc = pc + 1
	elseif memory[pc] == 0x1b then
		DEC_DE()
		log("DEC DE")
		pc = pc + 1
	elseif memory[pc] == 0x2b then
		DEC_HL()
		log("DEC HL")
		pc = pc + 1
	elseif memory[pc] == 0x3b then
		DEC_SP()
		log("DEC SP")
		pc = pc + 1
	elseif memory[pc] == 0x27 then
		DAA()
		log("DAA")
		pc = pc + 1
	elseif memory[pc] == 0x2f then
		CPL()
		log("CPL")
		pc = pc + 1
	elseif memory[pc] == 0x3f then
		CCF()
		log("CCF")
		pc = pc + 1
	elseif memory[pc] == 0x37 then
		SCF()
		log("SCF")
		pc = pc + 1
	elseif memory[pc] == 0x00 then
		NOP()
		log("NOP")
		pc = pc + 1
	elseif memory[pc] == 0x76 then
		HALT()
		log("HALT")
		pc = pc + 1
	elseif memory[pc] == 0x10 then
		STOP()
		log("STOP")
		pc = pc + 1
	elseif memory[pc] == 0xf3 then
		DI()
		log("DI")
		pc = pc + 1
	elseif memory[pc] == 0xfb then
		EI()
		log("EI")
		pc = pc + 1
	elseif memory[pc] == 0x07 then
		RLCA()
		log("RLCA")
		pc = pc + 1
	elseif memory[pc] == 0x17 then
		RLA()
		log("RLA")
		pc = pc + 1
	elseif memory[pc] == 0x0f then
		RRCA()
		log("RRCA")
		pc = pc + 1
	elseif memory[pc] == 0x1f then
		RRA()
		log("RRA")
		pc = pc + 1
	elseif memory[pc] == 0xc3 then
		log("JP " .. toHex(memory[pc + 1]) .. " " .. toHex(memory[pc + 2]))
		JP_nn(to16b(memory[pc + 1], memory[pc + 2]))
	elseif memory[pc] == 0xc2 then
		log("JP NZ, " .. toHex(memory[pc + 1]) .. " " .. toHex(memory[pc + 2]))
		JP_NZ_nn(to16b(memory[pc + 1], memory[pc + 2]))
	elseif memory[pc] == 0xca then
		log("JP Z" .. toHex(memory[pc + 1]) .. " " .. toHex(memory[pc + 2]))
		JP_Z_nn(to16b(memory[pc + 1], memory[pc + 2]))
	elseif memory[pc] == 0xd2 then
		log("JP  NC" .. toHex(memory[pc + 1]) .. " " .. toHex(memory[pc + 2]))
		JP_NC_nn(to16b(memory[pc + 1], memory[pc + 2]))
	elseif memory[pc] == 0xda then
		log("JP  C" .. toHex(memory[pc + 1]) .. " " .. toHex(memory[pc + 2]))
		JP_C_nn(to16b(memory[pc + 1], memory[pc + 2]))
	elseif memory[pc] == 0xe9 then
		log("JP (HL)")
		JP_HL(to16b(memory[pc + 1], memory[pc + 2]))
	elseif memory[pc] == 0x18 then
		log("JR " .. toHex(memory[pc + 1]))
		JR_n(memory[pc + 1])
	elseif memory[pc] == 0x20 then
		log("JR NZ, " .. toHex(memory[pc + 1]))
		JR_NZ_n(memory[pc + 1])
	elseif memory[pc] == 0x28 then
		log("JR Z, " .. toHex(memory[pc + 1]))
		JR_Z_n(memory[pc + 1])
	elseif memory[pc] == 0x30 then
		log("JR NC, " .. toHex(memory[pc + 1]))
		JR_NC_n(memory[pc + 1])
	elseif memory[pc] == 0x38 then
		log("JR C, " .. toHex(memory[pc + 1]))
		JR_C_n(memory[pc + 1])
	elseif memory[pc] == 0xcd then
		log("CALL " .. toHex(memory[pc + 1]) .. " " .. toHex(memory[pc + 2]))
		CALL_nn(to16b(memory[pc + 1], memory[pc + 2]))
	elseif memory[pc] == 0xc4 then
		log("CALL NZ, " .. toHex(memory[pc + 1]) .. " " .. toHex(memory[pc + 2]))
		CALL_NZ_nn(to16b(memory[pc + 1], memory[pc + 2]))
	elseif memory[pc] == 0xcc then
		log("CALL Z, " .. toHex(memory[pc + 1]) .. " " .. toHex(memory[pc + 2]))
		CALL_Z_nn(to16b(memory[pc + 1], memory[pc + 2]))
	elseif memory[pc] == 0xd4 then
		log("CALL NC, " .. toHex(memory[pc + 1]) .. " " .. toHex(memory[pc + 2]))
		CALL_NC_nn(to16b(memory[pc + 1], memory[pc + 2]))
	elseif memory[pc] == 0xdc then
		log("CALL C, " .. toHex(memory[pc + 1]) .. " " .. toHex(memory[pc + 2]))
		CALL_C_nn(to16b(memory[pc + 1], memory[pc + 2]))
	elseif memory[pc] == 0xc7 then
		RST_00H()
		log("RST 00H")
	elseif memory[pc] == 0xcf then
		log("RST 08H")
		RST_08H()
	elseif memory[pc] == 0xd7 then
		log("RST 10H")
		RST_10H()
	elseif memory[pc] == 0xdf then
		log("RST 18H")
		RST_18H()
	elseif memory[pc] == 0xe7 then
		log("RST 20H")
		RST_20H()
	elseif memory[pc] == 0xef then
		log("RST 28H")
		RST_28H()
	elseif memory[pc] == 0xf7 then
		log("RST 30H")
		RST_30H()
	elseif memory[pc] == 0xff then
		log("RST 38H")
		RST_38H()
	elseif memory[pc] == 0xc9 then
		log("RET")
		RET()
	elseif memory[pc] == 0xc0 then
		log("RET NZ")
		RET_NZ()
	elseif memory[pc] == 0xc8 then
		log("RET Z")
		RET_Z()
	elseif memory[pc] == 0xd0 then
		log("RET NC")
		RET_NC()
	elseif memory[pc] == 0xd8 then
		log("RET C")
		RET_C()
	elseif memory[pc] == 0xd9 then
		log("RETI")
		RETI()
	elseif memory[pc] == 0xfc then
		log("0xfc in an undocumented opcode and should not be used!")
		pc = pc + 1
	elseif memory[pc] == 0xcb then
		if memory[pc + 1] == 0x37 then
			SWAP_A()
			log("SWAP A")
			pc = pc + 1
		elseif memory[pc + 1] == 0x30 then
			SWAP_B()
			log("SWAP B")
			pc = pc + 1
		elseif memory[pc + 1] == 0x31 then
			SWAP_C()
			log("SWAP C")
			pc = pc + 1
		elseif memory[pc + 1] == 0x32 then
			SWAP_D()
			log("SWAP D")
			pc = pc + 1
		elseif memory[pc + 1] == 0x33 then
			SWAP_E()
			log("SWAP E")
			pc = pc + 1
		elseif memory[pc + 1] == 0x34 then
			SWAP_H()
			log("SWAP H")
			pc = pc + 1
		elseif memory[pc + 1] == 0x35 then
			SWAP_L()
			log("SWAP L")
			pc = pc + 1
		elseif memory[pc + 1] == 0x36 then
			SWAP_HL()
			log("SWAP (HL)")
			pc = pc + 1
		elseif memory[pc + 1] == 0x07 then
			RLC_A()
			log("RLC A")
			pc = pc + 1
		elseif memory[pc + 1] == 0x00 then
			RLC_B()
			log("RLC B")
			pc = pc + 1
		elseif memory[pc + 1] == 0x01 then
			RLC_C()
			log("RLC C")
			pc = pc + 1
		elseif memory[pc + 1] == 0x02 then
			RLC_D()
			log("RLC D")
			pc = pc + 1
		elseif memory[pc + 1] == 0x03 then
			RLC_E()
			log("RLC E")
			pc = pc + 1
		elseif memory[pc + 1] == 0x04 then
			RLC_H()
			log("RLC H")
			pc = pc + 1
		elseif memory[pc + 1] == 0x05 then
			RLC_L()
			log("RLC L")
			pc = pc + 1
		elseif memory[pc + 1] == 0x06 then
			RLC_HL()
			log("RLC (HL)")
			pc = pc + 1
		elseif memory[pc + 1] == 0x17 then
			RL_A()
			log("RL A")
			pc = pc + 1
		elseif memory[pc + 1] == 0x10 then
			RL_B()
			log("RL B")
			pc = pc + 1
		elseif memory[pc + 1] == 0x11 then
			RL_C()
			log("RL C")
			pc = pc + 1
		elseif memory[pc + 1] == 0x12 then
			RL_D()
			log("RL D")
			pc = pc + 1
		elseif memory[pc + 1] == 0x13 then
			RL_E()
			log("RL E")
			pc = pc + 1
		elseif memory[pc + 1] == 0x14 then
			RL_H()
			log("RL H")
			pc = pc + 1
		elseif memory[pc + 1] == 0x15 then
			RL_L()
			log("RL L")
			pc = pc + 1
		elseif memory[pc + 1] == 0x16 then
			RL_HL()
			log("RL (HL)")
			pc = pc + 1
		elseif memory[pc + 1] == 0x0f then
			RRC_A()
			log("RRC A")
			pc = pc + 1
		elseif memory[pc + 1] == 0x08 then
			RRC_B()
			log("RRC B")
			pc = pc + 1
		elseif memory[pc + 1] == 0x09 then
			RRC_C()
			log("RRC C")
			pc = pc + 1
		elseif memory[pc + 1] == 0x0a then
			RRC_D()
			log("RRC D")
			pc = pc + 1
		elseif memory[pc + 1] == 0x0b then
			RRC_E()
			log("RRC E")
			pc = pc + 1
		elseif memory[pc + 1] == 0x0c then
			RRC_H()
			log("RRC H")
			pc = pc + 1
		elseif memory[pc + 1] == 0x0d then
			RRC_L()
			log("RRC L")
			pc = pc + 1
		elseif memory[pc + 1] == 0x0e then
			RRC_HL()
			log("RRC (HL)")
			pc = pc + 1
		elseif memory[pc + 1] == 0x1f then
			RR_A()
			log("RR A")
			pc = pc + 1
		elseif memory[pc + 1] == 0x18 then
			RR_B()
			log("RR B")
			pc = pc + 1
		elseif memory[pc + 1] == 0x19 then
			RR_C()
			log("RR C")
			pc = pc + 1
		elseif memory[pc + 1] == 0x1a then
			RR_D()
			log("RR D")
			pc = pc + 1
		elseif memory[pc + 1] == 0x1b then
			RR_E()
			log("RR E")
			pc = pc + 1
		elseif memory[pc + 1] == 0x1c then
			RR_H()
			log("RR H")
			pc = pc + 1
		elseif memory[pc + 1] == 0x1d then
			RR_L()
			log("RR L")
			pc = pc + 1
		elseif memory[pc + 1] == 0x1e then
			RR_HL()
			log("RR (HL)")
			pc = pc + 1
		elseif memory[pc + 1] == 0x27 then
			SLA_A()
			log("SLA A")
			pc = pc + 1
		elseif memory[pc + 1] == 0x20 then
			SLA_B()
			log("SLA B")
			pc = pc + 1
		elseif memory[pc + 1] == 0x21 then
			SLA_C()
			log("SLA C")
			pc = pc + 1
		elseif memory[pc + 1] == 0x22 then
			SLA_D()
			log("SLA D")
			pc = pc + 1
		elseif memory[pc + 1] == 0x23 then
			SLA_E()
			log("SLA E")
			pc = pc + 1
		elseif memory[pc + 1] == 0x24 then
			SLA_H()
			log("SLA H")
			pc = pc + 1
		elseif memory[pc + 1] == 0x25 then
			SLA_L()
			log("SLA L")
			pc = pc + 1
		elseif memory[pc + 1] == 0x26 then
			SLA_HL()
			log("SLA (HL)")
			pc = pc + 1
		elseif memory[pc + 1] == 0x2f then
			SRA_A()
			log("SRA A")
			pc = pc + 1
		elseif memory[pc + 1] == 0x28 then
			SRA_B()
			log("SRA B")
			pc = pc + 1
		elseif memory[pc + 1] == 0x29 then
			SRA_C()
			log("SRA C")
			pc = pc + 1
		elseif memory[pc + 1] == 0x2a then
			SRA_D()
			log("SRA D")
			pc = pc + 1
		elseif memory[pc + 1] == 0x2b then
			SRA_E()
			log("SRA E")
			pc = pc + 1
		elseif memory[pc + 1] == 0x2c then
			SRA_H()
			log("SRA H")
			pc = pc + 1
		elseif memory[pc + 1] == 0x2d then
			SRA_L()
			log("SRA L")
			pc = pc + 1
		elseif memory[pc + 1] == 0x2e then
			SRA_HL()
			log("SRA (HL)")
			pc = pc + 1
		elseif memory[pc + 1] == 0x3f then
			SRL_A()
			log("SRL A")
			pc = pc + 1
		elseif memory[pc + 1] == 0x38 then
			SRL_B()
			log("SRL B")
			pc = pc + 1
		elseif memory[pc + 1] == 0x39 then
			SRL_C()
			log("SRL C")
			pc = pc + 1
		elseif memory[pc + 1] == 0x3a then
			SRL_D()
			log("SRL D")
			pc = pc + 1
		elseif memory[pc + 1] == 0x3b then
			SRL_E()
			log("SRL E")
			pc = pc + 1
		elseif memory[pc + 1] == 0x3c then
			SRL_H()
			log("SRL H")
			pc = pc + 1
		elseif memory[pc + 1] == 0x3d then
			SRL_L()
			log("SRL L")
			pc = pc + 1
		elseif memory[pc + 1] == 0x3e then
			SRL_HL()
			log("SRL (HL)")
			pc = pc + 1
		elseif memory[pc + 1] == 0x47 then
			BIT_b_A(memory[pc + 2])
			log("BIT " .. toHex(pc + 2) .. ", A")
			pc = pc + 2
		elseif memory[pc + 1] == 0x40 then
			BIT_b_B(memory[pc + 2])
			log("BIT " .. toHex(pc + 2) .. ", B")
			pc = pc + 2
		elseif memory[pc + 1] == 0x41 then
			BIT_b_C(memory[pc + 2])
			log("BIT " .. toHex(pc + 2) .. ", C")
			pc = pc + 2
		elseif memory[pc + 1] == 0x42 then
			BIT_b_D(memory[pc + 2])
			log("BIT " .. toHex(pc + 2) .. ", D")
			pc = pc + 2
		elseif memory[pc + 1] == 0x43 then
			BIT_b_E(memory[pc + 2])
			log("BIT " .. toHex(pc + 2) .. ", E")
			pc = pc + 2
		elseif memory[pc + 1] == 0x44 then
			BIT_b_H(memory[pc + 2])
			log("BIT " .. toHex(pc + 2) .. ", H")
			pc = pc + 2
		elseif memory[pc + 1] == 0x45 then
			BIT_b_L(memory[pc + 2])
			log("BIT " .. toHex(pc + 2) .. ", L")
			pc = pc + 2
		elseif memory[pc + 1] == 0x46 then
			BIT_b_HL(memory[pc + 2])
			log("BIT " .. toHex(pc + 2) .. ", (HL)")
			pc = pc + 2
		elseif memory[pc + 1] == 0xc7 then
			SET_b_A(memory[pc + 2])
			log("SET " .. toHex(pc + 2) .. ", A")
			pc = pc + 2
		elseif memory[pc + 1] == 0xc0 then
			SET_b_B(memory[pc + 2])
			log("SET " .. toHex(pc + 2) .. ", B")
			pc = pc + 2
		elseif memory[pc + 1] == 0xc1 then
			SET_b_C(memory[pc + 2])
			log("SET " .. toHex(pc + 2) .. ", C")
			pc = pc + 2
		elseif memory[pc + 1] == 0xc2 then
			SET_b_D(memory[pc + 2])
			log("SET " .. toHex(pc + 2) .. ", D")
			pc = pc + 2
		elseif memory[pc + 1] == 0xc3 then
			SET_b_E(memory[pc + 2])
			log("SET " .. toHex(pc + 2) .. ", E")
			pc = pc + 2
		elseif memory[pc + 1] == 0xc4 then
			SET_b_H(memory[pc + 2])
			log("SET " .. toHex(pc + 2) .. ", H")
			pc = pc + 2
		elseif memory[pc + 1] == 0xc5 then
			SET_b_L(memory[pc + 2])
			log("SET " .. toHex(pc + 2) .. ", L")
			pc = pc + 1
		elseif memory[pc + 1] == 0xc6 then
			SET_b_HL(memory[pc + 2])
			log("SET " .. toHex(pc + 2) .. ", (HL)")
			pc = pc + 2
		elseif memory[pc + 1] == 0x87 then
			RES_b_A(memory[pc + 2])
			log("RES " .. toHex(pc + 2) .. ", A")
			pc = pc + 2
		elseif memory[pc + 1] == 0x80 then
			RES_b_B(memory[pc + 2])
			log("RES " .. toHex(pc + 2) .. ", B")
			pc = pc + 2
		elseif memory[pc + 1] == 0x81 then
			RES_b_C(memory[pc + 2])
			log("RES " .. toHex(pc + 2) .. ", C")
			pc = pc + 2
		elseif memory[pc + 1] == 0x82 then
			RES_b_D(memory[pc + 2])
			log("RES " .. toHex(pc + 2) .. ", D")
			pc = pc + 2
		elseif memory[pc + 1] == 0x83 then
			RES_b_E(memory[pc + 2])
			log("RES " .. toHex(pc + 2) .. ", E")
			pc = pc + 2
		elseif memory[pc + 1] == 0x84 then
			RES_b_H(memory[pc + 2])
			log("RES " .. toHex(pc + 2) .. ", H")
			pc = pc + 2
		elseif memory[pc + 1] == 0x85 then
			RES_b_L(memory[pc + 2])
			log("RES " .. toHex(pc + 2) .. ", L")
			pc = pc + 2
		elseif memory[pc + 1] == 0x86 then
			RES_b_HL(memory[pc + 2])
			log("RES " .. toHex(pc + 2) .. ", (HL)")
			pc = pc + 2
		else
			log(toHex(memory[pc + 1]) .. " is not an opcode with the prefix CB!")
		end

		pc = pc + 2
	else
		log(toHex(memory[pc]) .. " is not handled")
		pc = pc + 1
	end
end
