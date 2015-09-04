Tile = class()

function Tile:init(number)
  self.number = number
  self.tile = {}
  self:update()
end

function Tile:getTile()
  return self.tile
end

function Tile:draw(x, y)

end

-- Pretend like this is private
function Tile:readTileMemory()
  tile = {}
  for i = 0, 16, 2 do
    tile[i + 1] = {}

    bits = toBits(memory:read_8b(self.number + 1), 8)
    bits2 = toBits(memory:read_8b(self.number + 2), 8)

    for j = 1, #bits, 2 do
      tile[i + 1][j] = (bits2[j] * 2) + bits[j] 
    end
  end

  return tile
end

function Tile:update()
  self.tile = self:readTileMemory() 
end

Sprite = class()

function Sprite:init(number)
  self.number = number
  self.sprite = {}
  self:update()
end

function Sprite:getSprite()
  return self.sprite
end

function Sprite:draw(x, y, xFlip, yFlip, palette)

end

-- I don't understand how a sprite can be 8x16 yet
function Sprite:readSpriteMemory()
  sprite = {}
  for i = 0, 16, 2 do
    sprite[i + 1] = {}

    bits = toBits(memory:read_8b(self.number + 1), 8)
    bits2 = toBits(memory:read_8b(self.number + 2), 8)

    for j = 1, #bits, 2 do
      sprite[i + 1][j] = (bits2[j] * 2) + bits[j] 
    end
  end

  return sprite
end

function Sprite:update()
  self.sprite = self:readSpriteMemory() 
end

SpriteAttribute = class()

function SpriteAttribute:init(address)
  self.address = address
  self:update()
end

function SpriteAttribute:drawSprite()
  self.sprite.draw(self.x, self.y, self.xFlip, self.yFlip, self.palette)
end

function SpriteAttribute:update()
  self.x = memory:read_8b(self.address) 
  self.y = memory:read_8b(self.addres + 1)

  spriteNumber = self:getSpriteNumber(self.address + 2)
  self.sprite = graphics.spriteData[spriteNumber + 1]

  flagBits = toBits(memory:read_8b(self.address + 3))
  self.priority = flagBits[1]
  self.yFlip = flagBits[2] == 1
  self.xFlip = flagBits[3] == 1
  self.palette = flagBits[4]
end

Graphics = class()

function Graphics:init()
  self.lcdDisplay = false
  self.windowTileMapAddress = {0x9800, 0x9bff}
  self.windowDisplay = false
  self.tileDataAddress = {0x8800, 0x97ff}
  self.bgTileMapAddress = {0x9800, 0xbff}
  self.spriteHeight = 8
  self.spriteDisplay = false
  self.bgWindowDisplay = false
  self.scroll = {0, 0} -- X, Y
  self.windowPosition = {0, 0} -- X, Y
  self.bgWinPalette = {0, 0, 0, 0} 
  self.objPalette0 = {0, 0, 0, 0} 
  self.objPalette1 = {0, 0, 0, 0} 
  self.scanLine = 0
  self.compareScanLine = 0
  self.tileData = {}
  self.backgroundTileMap = {}
  self.windowTileMap = {}
  self.spriteData = {}
  self.spriteAttributeData = {}
end

function Graphics:writeRegisters(address, value)
  bValue = toBits(value, 8)

  if address >= 0x8000 and address <= 0x8fff then
    self:updateSprite(address, value)
	elseif address >= 0xfe00 and address <= 0xfe9f then
		self:updateAttributes(address, value)
  elseif address >= self.tileDataAddress[1] and address <= self.tileDataAddress[2] then
		self:updateTile(address, value)
  elseif self.bgWindowDisplay == true and address >= self.bgTileMapAddress[1] and address <= self.bgTileMapAddress[2] then -- VRam
    if self.titeDataAddress[1] == 0x8000 then -- Unsigned
      self.backgroundTileMap[address - 0x8000] = value
    else -- Signed
      signedValue = toBits(value, 7) 
      x = (32 - ((address - 0x8000) % 32)) + 1
      y = mathFloor((address - 0x8000) / 32) + 1
      if bitwiseAnd_8(value, 0x80) > 0 then
        self.backgroundTileMap[x][y] = signedValue 
      else
        self.backgroundTileMap[x][y] = signedValue + 128
      end
    end
  elseif self.bgWindowDisplay == true and self.windowDisplay == true and address >= self.windowTileMapAddress[1] and address <= self.windowTileMapAddress[2] then
    if self.titeDataAddress[1] == 0x8000 then -- Unsigned
      self.windowTileMap[address - 0x8000] = value
    else -- Signed
      signedValue = toBits(value, 7) 
      x = (32 - ((address - 0x8000) % 32)) + 1
      y = mathFloor((address - 0x8000) / 32) + 1
      if bitwiseAnd_8(value, 0x80) > 0 then
        self.windowTileMap[x][y] = signedValue 
      else
        self.windowTileMap[x][y] = signedValue + 128
      end
    end
	else
  	if address == 0xff40 then -- LCD Control
  	  self.lcdDisplay = bValue[8] ~= 0
  	  self.windowTileMapAddress = bValue[7] == 1 and {0x9800, 0x9bff} or {0x9c00, 0x9fff}
  	  self.windowDisplay = bValue[6] == 0
  	  self.tileDataAddress = bValue[5] == 0 and {0x8800, 0x97ff} or {0x8000, 0x8fff}
  	  self.bgTileMapAddress = bValue[4] == 0 and {0x9800, 0xbff} or {0x9c00, 0x9fff}
  	  self.spriteHeight = bValue[3] == 0 and 8 or 16
  	  self.spriteDisplay = bValue[2] ~= 0
  	  self.bgWindowDisplay = bValue[1] ~= 0
  	elseif address == 0xff41 then -- LCDC Status

 	  elseif address == 0xff45 then -- LY Compare
   		self.compareScanLine = value
    	stat = memory:read_8b(0xff41)
    	bStat = toBits(stat, 8)
    	if self.compareScanLine == self.scanLine then
      	bStat[3] = 1
    	else
    	  bStat[3] = 0
    	end
  	elseif address == 0xff46 then -- DMA Transfer and Start Address
  	  -- This is unimplemented because this is a function of more complex roms
  	elseif address == 0xff47 then -- BG & Window Palette Data
    	self.bgWinPalette[1] = bValue[1] + (bValue[2] * 2)
    	self.bgWinPalette[2] = bValue[3] + (bValue[4] * 2)
    	self.bgWinPalette[3] = bValue[5] + (bValue[6] * 2)
    	self.bgWinPalette[4] = bValue[7] + (bValue[8] * 2)
  	elseif address == 0xff48 then -- Object Palette 0 Data
    	self.objPalette0[1] = bValue[1] + (bValue[2] * 2)
    	self.objPalette0[2] = bValue[3] + (bValue[4] * 2)
    	self.objPalette0[3] = bValue[5] + (bValue[6] * 2)
    	self.objPalette0[4] = bValue[7] + (bValue[8] * 2)
  	elseif address == 0xff49 then -- Object Palette 1 Data
  	  self.objPalette1[1] = bValue[1] + (bValue[2] * 2)
 	    self.objPalette1[2] = bValue[3] + (bValue[4] * 2)
      self.objPalette1[3] = bValue[5] + (bValue[6] * 2)
    	self.objPalette1[4] = bValue[7] + (bValue[8] * 2)
  	elseif address == 0xff4a then -- Window Y Position
  	  self.windowPosition[2] = value
  	elseif address == 0xff4b then -- Window X Position
    	self.windowPosition[1] = value
  	end
	end
end

function Graphics:readRegisters(address, value)
  if address == 0xff42 then -- Scroll Y
    return self.scroll[2]
  elseif address == 0xff43 then -- Scroll X
    return self.scroll[1]
  elseif address == 0xff44 then -- LCDC Y-Coordinate
    return self.scanLine
  elseif address == 0xff45 then -- LY Compare
    return self.compareScanLine
  elseif address == 0xff4a then -- Window Y Position
    return self.windowPosition[2]
  elseif address == 0xff4b then -- Window X Position
    return self.windowPosition[1]
  end

  return nil
end

function Graphics:getTileNumber(address)
  number = mathFloor((address - self.tileDataAddress[1]) / 16)
  tileAddress = (number * 16) + self.tileDataAddress[1]

	return tileAddress
end

function Graphics:updateTile(address, value)
  tileNumber = self:getTileNumber(address)	
  
  if self.tileData[tileNumber] == nil then
    self.tileData[tileNumber + 1] = Tile(tileNumber)
  else
    self.tileData[tileNumber]:update()
  end
end

function Graphics:getSpriteNumber(address)
  number = mathFloor((address - 0x8000) / 16)
  spriteAddress = (number * 16) + 0x8000 

  return spriteAddress
end

function Graphics:updateSprite(address, value)
  spriteNumber = self:getSpriteNumber(address)
  
  if self.spriteData[spriteNumber] == nil then
    self.spriteData[spriteNumber + 1] = Sprite(spriteNumber)
  else
    self.spriteData[spriteNumber + 1]:update()
  end
end

function Graphics:getAttributeNumber(address)
  number = mathFloor((address - 0xfe00) / 16)
  attributeAddress = (number * 16) + 0xfe00

  return attributeAddress
end

function Graphics:updateAttributes(address, value)
  attributeNumber = self:getAttributeNumber(address)

  if self.spriteAttributeData[attributeNumber] == nil then
    self.spriteAtrributeData[attributeNumber] = SpriteAttribute(address)
  else
    self.spriteAtrributeData[attributeNumber].update()
  end
end
