-- Bitwise functions
-- Functions that start with b return a bit array
-- Functions that do not start with b return an int


-- The function toBits is from http://stackoverflow.com/questions/9079853/lua-print-integer-as-a-binary
function toBits (num, bits)
    bits = bits or select(2, math.frexp(num))
    local bitArray = {}      
    for b = bits, 1, -1 do
        bitArray[b] = math.fmod(num,2)
        num = (num - bitArray[b]) / 2
    end
    
    return bitArray
end

function toInt (bits)
	number = 0
	i = #bits

	while i > 0 do
		if bits[i] == 1 then
			number = number + math.pow(2, 8 - i) -- Go bacwards through array
		end

		i = i - 1
	end
	
	return number
end

-- Shifts take only ints

function bShiftRight (number, shift)
    return number * math.pow(2, shift)
end

function shiftRight (number, shift)
	return toInt(bShiftRight(number, shift))
end

function bShiftLeft (number, shift)
	return number / math.pow(2, shift)
end

function shiftLeft (number, shift)
	return toInt(bShiftLeft(number, shift))
end

function bBitwiseAnd (bits1, bits2)
    newBits = {}
    i = 0
    
    while i <= #bits1 do
        if bits1[i] == bits2[i] and bits1[i] ~= 0 and bits2[i] ~= 0 then
            newBits[i] = 1
        else
            newBits[i] = 0
        end
        
        i = i + 1
    end
    
    return newBits
end

function bitwiseAnd (bits1, bits2)
	return toInt(bBitwiseAnd(bits1, bits2))
end

function bitwiseAnd_8 (bits1, bits2)
    return bitwiseAnd(toBits(bits1, 8), toBits(bits2, 8))
end

function bBitwiseOr (bits1, bits2)
    newBits = {}
    i = 0
    
    while i <= #bits1 do
        if bits1[i] == bits2[i] and bits1[i] == 0 and bits2[i] == 0 then
            newBits[i] = 0
        else
            newBits[i] = 1
        end
        
        i = i + 1
    end
    
    return newBits
end

function bitwiseOr (bits1, bits2)
	return toInt(bBitwiseOr(bits1, bits2))
end

function bitwiseOr_8 (bits1, bits2)
    return bitwiseOr(toBits(bits1, 8), toBits(bits2, 8))
end

function bBitwiseXor (bits1, bits2)
    newBits = {}
    i = 0
    
    while i <= #bits1 do
        if bits1[i] ~= bits2[i] then
            newBits[i] = 1
        else
            newBits[i] = 0
        end
        
        i = i + 1
    end
    
    return newBits
end

function bitwiseXor (bits1, bits2)
	return toInt(bBitwiseXor(bits1, bits2))
end

function bitwiseXor_8 (bits1, bits2)
    return bitwiseXor(toBits(bits1, 8), toBits(bits2, 8))
end

function bBitwiseNegate (bits)
    newBits = {}
    i = 0
    
    while i <= #bits do
        if bits[i] == 1 then
            newBits[i] = 0
        else
            newBits[i] = 1
        end
        
        i = i + 1
    end
    
    return newBits
end

function bitwiseNegate (bits)
	return toInt(bBitwiseNegate(bits))
end

function bitwiseNegate_8 (bits1)
    return bitwiseAnd(toBits(bits1, 8))
end


function u_toHex (num)
    return tonumber(num, 16) -- Expecting to see that this doesn't work
end

function toHex (num)
    return "0x" + u_toHex(num)
end