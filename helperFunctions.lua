function eAssert(functionName, variable, variableName, expectedType)
  message = functionName .. " expects " .. variableName .. " to be both a " .. expectedType .. " and non-nil"

  isNil = variable == nil
  isType = type(variable) ~= expectedType

  if isType then
    message = message .. ", but " .. variableName .. " is a " .. type(variable)
    assert(false, message)
  elseif isNil then
    message = message .. ", but " .. variableName .. " is nil"
    assert(false, message)
  end
end

function setFlags(z, s, hc, c)
  flag = toBits(registers[8], 8)

  if z ~= nil then
    if z then zeroFlag:set() else zeroFlag:reset() end
    flag[8] = zeroFlag:toBit()
  end

  if s ~= nil then
    if z then subtractFlag:set() else subtractFlag:reset() end
    flag[7] = subtractFlag:toBit()
  end

  if hc ~= nil then
    if z then halfCarryFlag:set() else halfCarryFlag:reset() end
    flag[6] = halfCarryFlag:toBit()
  end

  if c ~= nil then
    if z then carryFlag:set() else carryFlag:reset() end
    flag[5] = carryFlag:toBit()
  end

  registers[8] = toInt(flag)
end

function writeRegister_16b(rIndex1, rIndex2, num)
  eAssert("writeRegister_16b", rIndex1, "rIndex1", "number")
  eAssert("writeRegister_16b", rIndex2, "rIndex2", "number")
  eAssert("writeRegister_16b", num, "num", "number")

  registers[rIndex1] = toInt(toBits(num, 8))
  registers[rIndex2] = shiftRight(num, 8)
end

function getRegister_16b(first)
  eAssert("getRegister_16b", first, "first", "number")

  return bitsTo_16b(registers[first], registers[first + 1])
end

function bitsTo_16b(low, high)
  eAssert("bitsTo_16b", low, "low", "number")
  eAssert("bitsTo_16b", high, "high", "number")

  return shiftLeft(high, 8) + low
end

function mask_8b(number)
  eAssert("mask_8b", number, "number", "number")

  return toInt(toBits(number, 8)) 
end

function mask_16b(number)
  eAssert("mask_16b", number, "number", "number")

  return toInt(toBits(number, 16))
end

-- From http://stackoverflow.com/questions/1426954/split-string-in-lua by user973713 (second answer) but slightly modified
function split(inputstr, sep)
  eAssert("split", inputstr, "inputstr", "string")
  eAssert("split", sep, "sep", "string")

  if sep == nil then
    sep = "%s"
  end
  local t={} ; i=1
  for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
    t[i] = str
    i = i + 1
  end
  return t
end
