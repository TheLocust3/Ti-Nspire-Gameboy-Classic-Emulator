function get_8b (location)
  graphicsValue = readGraphicsRegisters(location)

  if graphics ~= nil then
    return graphicsValue
  end

  return memory[location + 1]
end

function get_16b (location)
  return to16b(get_8b(location + 1), get_8b(location))
end

function write_8b (location, value)
  if writeCheck(location + 1) then
    memory[location + 1] = 0x00
  else
    memory[location + 1] = value
  end

  writeGraphicsRegisters(location, value)
end

function write_16b (location, value)
  write_8b(location, shiftRight(value, 8))
  write_8b(location + 1, toInt(toBits(value, 8)))
end

function writeCheck (location)
  if location == 0xff04 then
    return true
  end
end

-- Set specific memory values
write_8b(0xff00, 0xf)
write_8b(0xff40, 0x91)
