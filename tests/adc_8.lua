registers[1] = 0x24

ADC_A_A()

print("Results: " .. registers[1] .. ", fZero " .. tostring(fZero) .. ", fSubtract " .. tostring(fSubtract) .. ", fHalfCarry " .. tostring(fHalfCarry) .. ", fCarry " .. tostring(fCarry))