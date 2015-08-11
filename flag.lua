Flag = class(function(klass, default)
    klass.flag = default 
  end)

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
  return number == 0
end

SubtractFlag = class(Flag)

CarryFlag = class(Flag)

function CarryFlag:isCarry_8b(number)
  return number > 0xff
end

function CarryFlag:isCarry_16b(number)
  return number > 0xffff
end

HalfCarryFlag = class(Flag)

function HalfCarryFlag:isHalfCarryAdd_8b (a, b)
  if bitwiseAnd_8(bitwiseAnd_8(a, 0xf) + bitwiseAnd_8(b, 0xf), 0xf0) > 0 then
    return true
  else
    return false
  end
end

function HalfCarryFlag:isHhalfCarryAdd_16b (a, b)
  if bitwiseAnd_16(bitwiseAnd_16(a, 0xfff) + bitwiseAnd_16(b, 0xfff), 0xfff0) > 0 then
    return true
  else
    return false
  end
end

function HalfCarryFlag:isHalfCarrySub_8b (a, b)
  if bitwiseAnd_8(bitwiseAnd_8(a, 0xf) - bitwiseAnd_8(b, 0xf), 0x08) ~= a then
    return true
  else
    return false
  end
end
