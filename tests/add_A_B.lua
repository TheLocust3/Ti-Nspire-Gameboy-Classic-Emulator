registers[1] = 0x88
registers[2] = 0xff

ADD_A_B()

print("Results: " .. registers[1] .. ", fZero " .. tostring(fZero) .. ", fSubtract " .. tostring(fSubtract) .. ", fHalfCarry " .. tostring(fHalfCarry) .. ", fCarry " .. tostring(fCarry))
