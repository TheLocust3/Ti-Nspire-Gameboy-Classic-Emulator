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

-- Set BIOS values
store16b(1, 8, 0x01)
registers[8] = 0xb0
store16b(2, 3, 0x0013)
store16b(4, 5, 0x00d8)
store16b(6, 7, 0x014d)
registers[9] = 0xfffe
write_8b(0xff10, 0x80)
write_8b(0xff11, 0xbf)
write_8b(0xff12, 0xf3)
write_8b(0xff14, 0xbf)
write_8b(0xff16, 0x3f)
write_8b(0xff19, 0xbf)
write_8b(0xff1a, 0x7f)
write_8b(0xff1b, 0xff)
write_8b(0xff1c, 0x9f)
write_8b(0xff1e, 0xbf)
write_8b(0xff20, 0xff)
write_8b(0xff23, 0xbf)
write_8b(0xff24, 0x77)
write_8b(0xff25, 0xf3)
write_8b(0xff26, 0xf1)
write_8b(0xff40, 0x91)
write_8b(0xff47, 0xfc)
write_8b(0xff48, 0xff)
write_8b(0xff49, 0xff)
