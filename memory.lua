Memory = class()

function Memory:init(rom)
  self.ram = {}

  for i = 1, 0xffff + 1 do -- +1 so that 0xffff actually works
    self.ram[i] = 0
  end

  for i = 1, #rom do
    self.ram[i] = rom[i]
  end
end

function Memory:readCheck(address)
  graphicsValue = graphics:readRegisters(address)

  if graphicsValue ~= nil then
    return graphicsValue
  end
end

function Memory:writeCheck(address)
  if address == 0xff04 then
    return 0x00 
  end

  return nil 
end

function Memory:read_8b(address)
  checkValue = self:readCheck(address + 1)

  if checkValue ~= nil then
    return checkValue
  end

  return self.ram[address + 1]
end

function Memory:read_16b(address)
  return bitsTo_16b(self:read_8b(address), self:read_8b(address + 1)) -- bitsTo_16b switches the high and low
end

function Memory:writeNoCheck_8b(address, value)
  self.ram[address + 1] = value
  graphics:writeRegisters(address, value)
end

function Memory:write_8b(address, value)
  checkValue = self:writeCheck(address)
  if checkValue ~= nil then
    self.ram[address + 1] = checkValue
  else
    self:writeNoCheck_8b(address, value)
  end
end

function Memory:write_16b(address, value)
  self:write_8b(address, toInt(toBits(value, 8)))
  self:write_8b(address + 1, shiftRight(value, 8))
end
