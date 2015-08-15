registers[1] = 0x7
registers[2] = 0x1f

SBC_A_B()

print("Results: " .. registers[1] .. ", fZero " .. tostring(fZero) .. ", fSubtract " .. tostring(fSubtract) .. ", fHalfCarry " .. tostring(fHalfCarry) .. ", fCarry " .. tostring(fCarry))
