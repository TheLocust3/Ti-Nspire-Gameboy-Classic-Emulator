function dispatcher ()
	io.print(toHex(pc) .. ": ")

	if rom[pc] == 0x06 then
		print("LD B, " .. toHex(rom[pc + 1]))
		pc = pc + 2
	elseif rom[pc] == 0x0e then
		print("LD C, " .. toHex(rom[pc + 1]))
		pc = pc + 2
	elseif rom[pc] == 0x16 then
		print("LD D, " .. toHex(rom[pc + 1]))
		pc = pc + 2
	elseif rom[pc] == 0x1e then
		print("LD E, " .. toHex(rom[pc + 1]))
		pc = pc + 2
	elseif rom[pc] == 0x26 then
		print("LD H, " .. toHex(rom[pc + 1]))
		pc = pc + 2
	elseif rom[pc] == 0x2e then
		print("LD L, " .. toHex(rom[pc + 1]))
		pc = pc + 2
	elseif rom[pc] == 0x7f then
		print("LD A, A")
		pc = pc + 1
	elseif rom[pc] == 0x78 then
		print("LD A, B")
		pc = pc + 1
	elseif rom[pc] == 0x79 then
		print("LD A, C")
		pc = pc + 1
	elseif rom[pc] == 0x7a then
		print("LD A, D")
		pc = pc + 1
	elseif rom[pc] == 0x7b then
		print("LD A, E")
		pc = pc + 1
	elseif rom[pc] == 0x7c then
		print("LD A, H")
		pc = pc + 1
	elseif rom[pc] == 0x7d then
		print("LD A, L")
		pc = pc +1
	elseif rom[pc] == 0x7e then
		print("LD A, (HL)")
		pc = pc + 1
	elseif rom[pc] == 0x40 then
		print("LD B, B")
		pc = pc + 1
	elseif rom[pc] == 0x41 then
		print("LD B, C")
		pc = pc + 1
	elseif rom[pc] == 0x42 then
		print("LD B, D")
		pc = pc + 1
	elseif rom[pc] == 0x43 then
		print("LD B, E")
		pc = pc + 1
	elseif rom[pc] == 0x44 then
		print("LD B, H")
		pc = pc + 1
	elseif rom[pc] == 0x45 then
		print("LD B, L")
		pc = pc + 1
	elseif rom[pc] == 0x46 then
		print("LD B, (HL)")
		pc = pc + 1
	elseif rom[pc] == 0x48 then
		print("LD C, B")
		pc = pc + 1
	elseif rom[pc] == 0x49 then
		print("LD C, C")
		pc = pc + 1
	elseif rom[pc] == 0x4a then
		print("LD C, D")
		pc = pc + 1
	elseif rom[pc] == 0x4b then
		print("LD C, E")
		pc = pc + 1
	elseif rom[pc] == 0x4c then
		print("LD C, H")
		pc = pc + 1
	elseif rom[pc] == 0x4d then
		print("LD C, L")
		pc = pc + 1
	elseif rom[pc] == 0x4e then
		print("LD C, (HL)")
		pc = pc + 1
	elseif rom[pc] == 0x50 then
		print("LD D, B")
		pc = pc + 1
	elseif rom[pc] == 0x51 then
		print("LD D, C")
		pc = pc + 1
	elseif rom[pc] == 0x52 then
		print("LD D, D")
		pc = pc + 1
	elseif rom[pc] == 0x53 then
		print("LD D, E")
		pc = pc + 1
	elseif rom[pc] == 0x54 then
		print("LD D, H")
		pc = pc + 1
	elseif rom[pc] == 0x55 then
		print("LD D, L")
		pc = pc + 1
	elseif rom[pc] == 0x56 then
		print("LD D, (HL)")
		pc = pc + 1
	elseif rom[pc] == 0x58 then
		print("LD E, B")
		pc = pc + 1
	elseif rom[pc] == 0x59 then
		print("LD E, C")
		pc = pc + 1
	elseif rom[pc] == 0x5a then
		print("LD E, D")
		pc = pc + 1
	elseif rom[pc] == 0x5b then
		print("LD E, E")
		pc = pc + 1
	elseif rom[pc] == 0x5c then
		print("LD E, H")
		pc = pc + 1
	elseif rom[pc] == 0x5d then
		print("LD E, L")
		pc = pc + 1
	elseif rom[pc] == 0x5e then
		print("LD E, (HL)")
		pc = pc + 1
	elseif rom[pc] == 0x60 then
		print("LD H, B")
		pc = pc + 1
	elseif rom[pc] == 0x61 then
		print("LD H, C")
		pc = pc + 1
	elseif rom[pc] == 0x62 then
		print("LD H, D")
		pc = pc + 1
	elseif rom[pc] == 0x63 then
		print("LD H, E")
		pc = pc + 1
	elseif rom[pc] == 0x64 then
		print("LD H, H")
		pc = pc + 1
	elseif rom[pc] == 0x65 then
		print("LD H, L")
		pc = pc + 1
	elseif rom[pc] == 0x66 then
		print("LD H, (HL)")
		pc = pc + 1
	elseif rom[pc] == 0x68 then
		print("LD L, B")
		pc = pc + 1
	elseif rom[pc] == 0x69 then
		print("LD L, C")
		pc = pc + 1
	elseif rom[pc] == 0x6a then
		print("LD L, D")
		pc = pc + 1
	elseif rom[pc] == 0x6b then
		print("LD L, E")
		pc = pc + 1
	elseif rom[pc] == 0x6c then
		print("LD L, H")
		pc = pc + 1
	elseif rom[pc] == 0x6d then
		print("LD L, L")
		pc = pc + 1
	elseif rom[pc] == 0x6e then
		print("LD L, (HL)")
		pc = pc + 1
	elseif rom[pc] == 0x70 then
		print("LD (HL), B")
		pc = pc + 1
	elseif rom[pc] == 0x71 then
		print("LD (HL), C")
		pc = pc + 1
	elseif rom[pc] == 0x72 then
		print("LD (HL), D")
		pc = pc + 1
	elseif rom[pc] == 0x73 then
		print("LD (HL), E")
		pc = pc + 1
	elseif rom[pc] == 0x74 then
		print("LD (HL), H")
		pc = pc + 1
	elseif rom[pc] == 0x75 then
		print("LD (HL), L")
		pc = pc + 1
	elseif rom[pc] == 0x36 then
		print("LD (HL), " .. toHex(rom[pc + 1]))
		pc = pc + 2
	elseif rom[pc] == 0x7f then
		print("LD A, A")
		pc = pc + 1
	elseif rom[pc] == 0x78 then
		print("LD A, B")
		pc = pc + 1
	elseif rom[pc] == 0x79 then
		print("LD A, C")
		pc = pc + 1
	elseif rom[pc] == 0x7a then
		print("LD A, D")
		pc = pc + 1
	elseif rom[pc] == 0x7b then
		print("LD A, E")
		pc = pc + 1
	elseif rom[pc] == 0x7c then
		print("LD A, H")
		pc = pc + 1
	elseif rom[pc] == 0x7d then
		print("LD A, L")
		pc = pc + 1
	elseif rom[pc] == 0x0a then
		print("LD A, (BC)")
		pc = pc + 1
	elseif rom[pc] == 0x1a then
		print("LD A, (DE)")
		pc = pc + 1
	elseif rom[pc] == 0x7e then
		print("LD A, (HL)")
		pc = pc + 1
	elseif rom[pc] == 0xfa then
		print("LD A, " .. toHex(rom[pc + 1]) .. u_toHex(pc + 2))
		pc = pc + 3
	elseif rom[pc] == 0x3e then
		print("LD A, " .. toHex(rom[pc + 1]))
		pc = pc + 2
	elseif rom[pc] == 0x47 then
		print("LD B, A")
		pc = pc + 1
	elseif rom[pc] == 0x4f then
		print("LD C, A")
		pc = pc + 1
	elseif rom[pc] == 0x57 then
		print("LD D, A")
		pc = pc + 1
	elseif rom[pc] == 0x5f then
		print("LD E, A")
		pc = pc + 1
	elseif rom[pc] == 0x67 then
		print("LD H, A")
		pc = pc + 1
	elseif rom[pc] == 0x6f then
		print("LD L, A")
		pc = pc + 1
	elseif rom[pc] == 0x02 then
		print("LD (BC), A")
		pc = pc + 1
	elseif rom[pc] == 0x12 then
		print("LD (DE), A")
		pc = pc + 1
	elseif rom[pc] == 0x77 then
		print("LD (HL), A")
		pc = pc + 1
	elseif rom[pc] == 0xea then
		print("LD (" .. toHex(rom[pc + 1]) .. "" .. u_toHex(pc + 2) .. "), A")
		pc = pc + 3
	elseif rom[pc] == 0xf2 then
		print("LD A, (C)")
		pc = pc + 1
	elseif rom[pc] == 0xe2 then
		print("LD ($FF00 .. C), A")
		pc = pc + 1
	elseif rom[pc] == 0x3a then
		print("LD A, (HLD) or LD A, (HL-) or LDD A, (HL)")
		pc = pc + 1
	elseif rom[pc] == 0x32 then
		print("LD (HLD), A or LD (HL-), A or LDD (HL), A")
		pc = pc + 1
	elseif rom[pc] == 0x2a then
		print("LD A, (HLI) or LD A, (HL..) or LDI A, (HL)")
		pc = pc + 1
	elseif rom[pc] == 0x22 then
		print("LD (HLI), LD A or LD (HL..), LDI A or (HL), A")
		pc = pc + 1
	elseif rom[pc] == 0xe0 then
		print("LDH ($FF00 .. " .. toHex(rom[pc + 1]) .. "), A")
		pc = pc + 2
	elseif rom[pc] == 0xf0 then
		print("LDH A, ($FF00 .. " .. toHex(rom[pc + 1]) .. ")")
		pc = pc + 2
	elseif rom[pc] == 0x01 then
		print("LD BC, " .. toHex(rom[pc + 1]) .. u_toHex(pc + 2))
		pc = pc + 3
	elseif rom[pc] == 0x11 then
		print("LD DE, " .. toHex(rom[pc + 1]) .. u_toHex(pc + 2))
		pc = pc + 3
	elseif rom[pc] == 0x21 then
		print("LD HL, " .. toHex(rom[pc + 1]) .. u_toHex(pc + 2))
		pc = pc + 3
	elseif rom[pc] == 0x31 then
		print("LD SP, " .. toHex(rom[pc + 1]) .. u_toHex(pc + 2))
		pc = pc + 3
	elseif rom[pc] == 0xf9 then
		print("LD SP, HL")
		pc = pc + 1
	elseif rom[pc] == 0xf8 then
		print("LDHL SP, " .. toHex(rom[pc + 1]) .. " or LD HL, SP .. " .. toHex(rom[pc + 1]))
		pc = pc + 2
	elseif rom[pc] == 0x08 then
		print("LD " .. toHex(rom[pc + 1]) .. u_toHex(pc + 2) .. ", SP")
		pc = pc + 3
	elseif rom[pc] == 0xf5 then
		print("PUSH AF")
		pc = pc + 1
	elseif rom[pc] == 0xc5 then
		print("PUSH BC")
		pc = pc + 1
	elseif rom[pc] == 0xd5 then
		print("PUSH DE")
		pc = pc + 1
	elseif rom[pc] == 0xe5 then
		print("PUSH HL")
		pc = pc + 1
	elseif rom[pc] == 0xf1 then
		print("POP AF")
		pc = pc + 1
	elseif rom[pc] == 0xc1 then
		print("POP BC")
		pc = pc + 1
	elseif rom[pc] == 0xd1 then
		print("POP DE")
		pc = pc + 1
	elseif rom[pc] == 0xe1 then
		print("POP HL")
		pc = pc + 1
	elseif rom[pc] == 0x87 then
		print("ADD A, A")
		pc = pc + 1
	elseif rom[pc] == 0x80 then
		print("ADD A, B")
		pc = pc + 1
	elseif rom[pc] == 0x81 then
		print("ADD A, C")
		pc = pc + 1
	elseif rom[pc] == 0x82 then
		print("ADD A, D")
		pc = pc + 1
	elseif rom[pc] == 0x83 then
		print("ADD A, E")
		pc = pc + 1
	elseif rom[pc] == 0x84 then
		print("ADD A, H")
		pc = pc + 1
	elseif rom[pc] == 0x85 then
		print("ADD A, L")
		pc = pc + 1
	elseif rom[pc] == 0x86 then
		print("ADD A, (HL)")
		pc = pc + 1
	elseif rom[pc] == 0xc6 then
		print("ADD A, " .. toHex(rom[pc + 1]))
		pc = pc + 2
	elseif rom[pc] == 0x8f then
		print("ADC A, A")
		pc = pc + 1
	elseif rom[pc] == 0x88 then
		print("ADC A, B")
		pc = pc + 1
	elseif rom[pc] == 0x89 then
		print("ADC A, C")
		pc = pc + 1
	elseif rom[pc] == 0x8a then
		print("ADC A, D")
		pc = pc + 1
	elseif rom[pc] == 0x8b then
		print("ADC A, E")
		pc = pc + 1
	elseif rom[pc] == 0x8c then
		print("ADC A, H")
		pc = pc + 1
	elseif rom[pc] == 0x8d then
		print("ADC A, L")
		pc = pc + 1
	elseif rom[pc] == 0x8e then
		print("ADC A, (HL)")
		pc = pc + 1
	elseif rom[pc] == 0xce then
		print("ADC A, " .. toHex(rom[pc + 1]))
		pc = pc + 2
	elseif rom[pc] == 0x97 then
		print("SUB A, A")
		pc = pc + 1
	elseif rom[pc] == 0x90 then
		print("SUB A, B")
		pc = pc + 1
	elseif rom[pc] == 0x91 then
		print("SUB A, C")
		pc = pc + 1
	elseif rom[pc] == 0x92 then
		print("SUB A, D")
		pc = pc + 1
	elseif rom[pc] == 0x93 then
		print("SUB A, E")
		pc = pc + 1
	elseif rom[pc] == 0x94 then
		print("SUB A, H")
		pc = pc + 1
	elseif rom[pc] == 0x95 then
		print("SUB A, L")
		pc = pc + 1
	elseif rom[pc] == 0x96 then
		print("SUB A, (HL)")
		pc = pc + 1
	elseif rom[pc] == 0xd6 then
		print("SUB A, " .. toHex(rom[pc + 1]))
		pc = pc + 2
	elseif rom[pc] == 0x9f then
		print("SBC A, A")
		pc = pc + 1
	elseif rom[pc] == 0x98 then
		print("SBC A, B")
		pc = pc + 1
	elseif rom[pc] == 0x99 then
		print("SBC A, C")
		pc = pc + 1
	elseif rom[pc] == 0x9a then
		print("SBC A, D")
		pc = pc + 1
	elseif rom[pc] == 0x9b then
		print("SBC A, E")
		pc = pc + 1
	elseif rom[pc] == 0x9c then
		print("SBC A, H")
		pc = pc + 1
	elseif rom[pc] == 0x9d then
		print("SBC A, L")
		pc = pc + 1
	elseif rom[pc] == 0x9e then
		print("SBC A, (HL)")
		pc = pc + 1
	elseif rom[pc] == 0xde then
		print("SBC A, " .. toHex(rom[pc + 1]))
		pc = pc + 2
	elseif rom[pc] == 0xa7 then
		print("AND A")
		pc = pc + 1
	elseif rom[pc] == 0xa0 then
		print("AND B")
		pc = pc + 1
	elseif rom[pc] == 0xa1 then
		print("AND C")
		pc = pc + 1
	elseif rom[pc] == 0xa2 then
		print("AND D")
		pc = pc + 1
	elseif rom[pc] == 0xa3 then
		print("AND E")
		pc = pc + 1
	elseif rom[pc] == 0xa4 then
		print("AND H")
		pc = pc + 1
	elseif rom[pc] == 0xa5 then
		print("AND L")
		pc = pc + 1
	elseif rom[pc] == 0xa6 then
		print("AND (HL)")
		pc = pc + 1
	elseif rom[pc] == 0xe6 then
		print("AND " .. toHex(rom[pc + 1]))
		pc = pc + 2
	elseif rom[pc] == 0xb7 then
		print("OR A")
		pc = pc + 1
	elseif rom[pc] == 0xb0 then
		print("OR B")
		pc = pc + 1
	elseif rom[pc] == 0xb1 then
		print("OR C")
		pc = pc + 1
	elseif rom[pc] == 0xb2 then
		print("OR D")
		pc = pc + 1
	elseif rom[pc] == 0xb3 then
		print("OR E")
		pc = pc + 1
	elseif rom[pc] == 0xb4 then
		print("OR H")
		pc = pc + 1
	elseif rom[pc] == 0xb5 then
		print("OR L")
		pc = pc + 1
	elseif rom[pc] == 0xb6 then
		print("OR (HL)")
		pc = pc + 1
	elseif rom[pc] == 0xf6 then
		print("OR " .. toHex(rom[pc + 1]))
		pc = pc + 2
	elseif rom[pc] == 0xaf then
		print("XOR A")
		pc = pc + 1
	elseif rom[pc] == 0xa8 then
		print("XOR B")
		pc = pc + 1
	elseif rom[pc] == 0xa9 then
		print("XOR C")
		pc = pc + 1
	elseif rom[pc] == 0xaa then
		print("XOR D")
		pc = pc + 1
	elseif rom[pc] == 0xab then
		print("XOR E")
		pc = pc + 1
	elseif rom[pc] == 0xac then
		print("XOR H")
		pc = pc + 1
	elseif rom[pc] == 0xad then
		print("XOR L")
		pc = pc + 1
	elseif rom[pc] == 0xea then
		print("XOR (HL)")
		pc = pc + 1
	elseif rom[pc] == 0xee then
		print("XOR " .. toHex(rom[pc + 1]))
		pc = pc + 2
	elseif rom[pc] == 0xbf then
		print("CP A")
		pc = pc + 1
	elseif rom[pc] == 0xb8 then
		print("CP B")
		pc = pc + 1
	elseif rom[pc] == 0xb9 then
		print("CP C")
		pc = pc + 1
	elseif rom[pc] == 0xba then
		print("CP D")
		pc = pc + 1
	elseif rom[pc] == 0xbb then
		print("CP E")
		pc = pc + 1
	elseif rom[pc] == 0xbc then
		print("CP H")
		pc = pc + 1
	elseif rom[pc] == 0xbd then
		print("CP L")
		pc = pc + 1
	elseif rom[pc] == 0xbe then
		print("CP (HL)")
		pc = pc + 1
	elseif rom[pc] == 0xfe then
		print("CP " .. toHex(rom[pc + 1]))
		pc = pc + 2
	elseif rom[pc] == 0x3c then
		print("INC A")
		pc = pc + 1
	elseif rom[pc] == 0x04 then
		print("INC B")
		pc = pc + 1
	elseif rom[pc] == 0x0c then
		print("INC C")
		pc = pc + 1
	elseif rom[pc] == 0x14 then
		print("INC D")
		pc = pc + 1
	elseif rom[pc] == 0x1c then
		print("INC E")
		pc = pc + 1
	elseif rom[pc] == 0x24 then
		print("INC H")
		pc = pc + 1
	elseif rom[pc] == 0x2c then
		print("INC L")
		pc = pc + 1
	elseif rom[pc] == 0x34 then
		print("INC (HL)")
		pc = pc + 1
	elseif rom[pc] == 0x3d then
		print("DEC A")
		pc = pc + 1
	elseif rom[pc] == 0x05 then
		print("DEC B")
		pc = pc + 1
	elseif rom[pc] == 0x0d then
		print("DEC C")
		pc = pc + 1
	elseif rom[pc] == 0x15 then
		print("DEC D")
		pc = pc + 1
	elseif rom[pc] == 0x1d then
		print("DEC E")
		pc = pc + 1
	elseif rom[pc] == 0x25 then
		print("DEC H")
		pc = pc + 1
	elseif rom[pc] == 0x2d then
		print("DEC L")
		pc = pc + 1
	elseif rom[pc] == 0x35 then
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