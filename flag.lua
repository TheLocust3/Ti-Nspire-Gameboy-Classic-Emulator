Flag = class()

function Flag:init(default)
  self.flag = default
end

function Flag:isSet()
  return self.flag
end

function Flag:set()
  self.flag = true
end

function Flag:reset()
  self.flag = false
end

ZeroFlag = class(Flag) 

function ZeroFlag:isZero(number)
  n = number
  if n < 0 then
    n = 0
  end
  
  return n == 0
end

SubtractFlag = class(Flag)

CarryFlag = class(Flag)

function CarryFlag:isCarryHigh_8b(number)
  return number > 0xff
end

function CarryFlag:isCarryHigh_16b(number)
  return number > 0xffff
end

function CarryFlag:isCarryLow(number)
  return number < 0
end

-- The Rotates have their own family of carry flags
function CarryFlag:rotateLeftCarry(number)
  return bitwiseAnd_8b(number, 0x80) > 0
end

function CarryFlag:rotateRightCarry(number)
  return bitwiseAnd_8b(shift, 0x01) > 0
end

HalfCarryFlag = class(Flag)

function HalfCarryFlag:isHalfCarryAdd_8b (a, b)
  if bitwiseAnd_8b(bitwiseAnd_8b(a, 0xf) + bitwiseAnd_8b(b, 0xf), 0xf0) > 0 then
    return true
  else
    return false
  end
end

function HalfCarryFlag:isHalfCarryAdd_16b (a, b)
  if bitwiseAnd_16b(bitwiseAnd_16b(a, 0xfff) + bitwiseAnd_16b(b, 0xfff), 0xfff0) > 0 then
    return true
  else
    return false
  end
end

function HalfCarryFlag:isHalfCarrySub_8b (a, b)
  if bitwiseAnd_8b(bitwiseAnd_8b(a, 0xf) - bitwiseAnd_8b(b, 0xf), 0x08) ~= a then
    return true
  else
    return false
  end
end
