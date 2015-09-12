function setFlags(z, s, hc, c)
  flag = {0, 0, 0, 0, 0, 0, 0, 0}

  if z ~= nil then
    if z then zeroFlag:set() else zeroFlag:reset() end
  end

  if s ~= nil then
    if z then subtractFlag:set() else subtractFlag:reset() end
  end

  if hc ~= nil then
    if z then halfCarryFlag:set() else halfCarryFlag:reset() end
  end

  if c ~= nil then
    if z then carryFlag:set() else carryFlag:reset() end
  end

  if z == true then
    flag[8] = 1
  else
    flag[8] = 0
  end

  if s == true then
    flag[7] = 1
  else
    flag[7] = 0
  end

  if hc == true then
    flag[6] = 1
  else
    flag[6] = 0
  end

  if c == true then
    flag[5] = 1
  else
    flag[5] = 0
  end

  registers[8] = toInt(flag)
end

function store16b(rIndex1, rIndex2, num)
  registers[rIndex1] = shiftRight(num, 8)
  registers[rIndex2] = toInt(toBits(num, 8))
end

function getRegister_16b(first)
  return to16b(registers[first + 1], registers[first]) -- Reverse first + 1 and first to work around the reversal of to16b
end

--function to16b (low, high)
function to16b(low, high) -- This might have some negative effects
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
