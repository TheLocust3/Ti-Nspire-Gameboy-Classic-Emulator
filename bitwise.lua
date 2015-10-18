local stringSub = string.sub
local mathFloor = math.floor
local mathCeil = math.ceil
local mathPow = math.pow
local mathFmod = math.fmod

-- Bitwise functions
-- Functions that start with b return a bit array
-- Functions that do not start with b return an int

function toBits (num, bits)
  assert(num ~= nil, "num cannot be equal to nil")
  assert(bits ~= nil, "bits cannot be equal to nil")

  binary = {}
  total = num
  i = 1 

  while i <= bits do
    binary[i] = total % 2
    total = mathFloor(total / 2)
    i = i + 1
  end

  return binary
end

function toInt (bits)
  assert(bits ~= nil, "bits cannot be equal to nil")

  number = 0
  i = 1 

  while i <= #bits do
    if bits[i] == 1 then
      number = number + mathPow(2, i - 1) -- Go bacwards through array
    end

    i = i + 1
  end
  
  return mathFloor(number)
end

-- Shifts take only ints

function shiftLeft (number, shift)
  assert(number ~= nil, "number cannot be equal to nil")
  assert(shift ~= nil, "shift cannot be equal to nil")

  return mathFloor(number * mathPow(2, shift))
end

function shiftRight (number, shift)
  assert(number ~= nil, "number cannot be equal to nil")
  assert(shift ~= nil, "shift cannot be equal to nil")

  return mathFloor(number / mathPow(2, shift))
end

function bBitwiseAnd (bits1, bits2)
  assert(bits1 ~= nil, "bits1 cannot be equal to nil")
  assert(bits2 ~= nil, "bits2 cannot be equal to nil")

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
  assert(bits1 ~= nil, "bits1 cannot be equal to nil")
  assert(bits2 ~= nil, "bits2 cannot be equal to nil")

  return toInt(bBitwiseAnd(bits1, bits2))
end

function bitwiseAnd_8b (bits1, bits2)
  assert(bits1 ~= nil, "bits1 cannot be equal to nil")
  assert(bits2 ~= nil, "bits2 cannot be equal to nil")

  return bitwiseAnd(toBits(bits1, 8), toBits(bits2, 8))
end

function bitwiseAnd_16b (bits1, bits2)
  assert(bits1 ~= nil, "bits1 cannot be equal to nil")
  assert(bits2 ~= nil, "bits2 cannot be equal to nil")

  return bitwiseAnd(toBits(bits1, 16), toBits(bits2, 16))
end

function bBitwiseOr (bits1, bits2)
  assert(bits1 ~= nil, "bits1 cannot be equal to nil")
  assert(bits2 ~= nil, "bits2 cannot be equal to nil")

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
  assert(bits1 ~= nil, "bits1 cannot be equal to nil")
  assert(bits2 ~= nil, "bits2 cannot be equal to nil")

  return toInt(bBitwiseOr(bits1, bits2))
end

function bitwiseOr_8b (bits1, bits2)
  assert(bits1 ~= nil, "bits1 cannot be equal to nil")
  assert(bits2 ~= nil, "bits2 cannot be equal to nil")

  return bitwiseOr(toBits(bits1, 8), toBits(bits2, 8))
end

function bBitwiseXor (bits1, bits2)
  assert(bits1 ~= nil, "bits1 cannot be equal to nil")
  assert(bits2 ~= nil, "bits2 cannot be equal to nil")

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
  assert(bits1 ~= nil, "bits1 cannot be equal to nil")
  assert(bits2 ~= nil, "bits2 cannot be equal to nil")

  return toInt(bBitwiseXor(bits1, bits2))
end

function bitwiseXor_8b (bits1, bits2)
  assert(bits1 ~= nil, "bits1 cannot be equal to nil")
  assert(bits2 ~= nil, "bits2 cannot be equal to nil")

  return bitwiseXor(toBits(bits1, 8), toBits(bits2, 8))
end

function bBitwiseNegate (bits)
  assert(bits ~= nil, "bits cannot be equal to nil")

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
  assert(bits ~= nil, "bits cannot be equal to nil")

  return toInt(bBitwiseNegate(bits))
end

function bitwiseNegate_8b (bits)
  assert(bits ~= nil, "bits cannot be equal to nil")

  return bitwiseAnd(toBits(bits, 8))
end


function u_toHex(num)
  assert(num ~= nil, "num cannot be equal to nil")
  
  local hexstr = '0123456789abcdef'
  local s = ''
  while num > 0 do
    local mod = mathFmod(num, 16)
    s = stringSub(hexstr, mod+1, mod+1) .. s
    num = mathFloor(num / 16)
  end
  if s == '' then s = '0' end
  return s
end

function toHex (num)
  assert(num ~= nil, "num cannot be equal to nil")

  return "0x" .. u_toHex(num)
end
