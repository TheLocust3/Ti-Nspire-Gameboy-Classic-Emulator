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
  registers[rIndex1] = toInt(toBits(num, 8))
  registers[rIndex2] = shiftRight(num, 8)
end

function getRegister_16b(first)
  return bitsTo_16b(registers[first], registers[first + 1])
end

function bitsTo_16b(low, high)
  return shiftLeft(high, 8) + low
end

function mask_8b(number)
  return toInt(toBits(number, 8)) 
end

function mask_16b(number)
  return toInt(toBits(number, 16))
end

-- From http://stackoverflow.com/questions/1426954/split-string-in-lua by user973713 (second answer)
function split(inputstr, sep)
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
