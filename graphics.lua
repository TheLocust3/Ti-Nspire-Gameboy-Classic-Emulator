function writeGraphicsRegisters (address, value)
  bValue = toBits(value, 8)

	if address >= tileDataAddress[1] and address < tileDataAddress[2] then
		updateTile(address, value)		
	else
  	if address == 0xff40 then -- LCD Control
  	  lcdDisplay = bValue[8] == 0 and false or true
  	  windowTileMapAddress = bValue[7] == 1 and {0x9800, 0x9bff} or {0x9c00, 0x9fff}
  	  windowDisplay = bValue[6] == 0 and true or false
  	  tileDataAddress = bValue[5] == 0 and {0x8800, 0x97ff} or {0x8000, 0x8fff}
  	  bgTileMapAddress = bValue[4] == 0 and {0x9800, 0xbff} or {0x9c00, 0x9fff}
  	  spriteHeight = bValue[3] == 0 and 8 or 16
  	  spriteDisplay = bValue[2] == 0 and false or true
  	  bgWindowDisplay = bValue[1] == 0 and false or true
  	elseif address == 0xff41 then -- LCDC Status

 	  elseif address == 0xff45 then -- LY Compare
   		compareScanLine = value
    	stat = get_8b(0xff41)
    	bStat = toBits(stat, 8)
    	if compareScanLine == scanLine then
      	bStat[3] = 1
    	else
    	  bStat[3] = 0
    	end
  	elseif address == 0xff46 then -- DMA Transfer and Start Address
  	  -- This is unimplemented because this is a function of more complex roms
  	elseif address == 0xff47 then -- BG & Window Palette Data
    	bgWinPalette[1] = bValue[1] + (bValue[2] * 2)
    	bgWinPalette[2] = bValue[3] + (bValue[4] * 2)
    	bgWinPalette[3] = bValue[5] + (bValue[6] * 2)
    	bgWinPalette[4] = bValue[7] + (bValue[8] * 2)
  	elseif address == 0xff48 then -- Object Palette 0 Data
    	objPalette0[1] = bValue[1] + (bValue[2] * 2)
    	objPalette0[2] = bValue[3] + (bValue[4] * 2)
    	objPalette0[3] = bValue[5] + (bValue[6] * 2)
    	objPalette0[4] = bValue[7] + (bValue[8] * 2)
  	elseif address == 0xff49 then -- Object Palette 1 Data
  	  objPalette1[1] = bValue[1] + (bValue[2] * 2)
 	    objPalette1[2] = bValue[3] + (bValue[4] * 2)
      objPalette1[3] = bValue[5] + (bValue[6] * 2)
    	objPalette1[4] = bValue[7] + (bValue[8] * 2)
  	elseif address == 0xff4a then -- Window Y Position
  	  windowPosition[2] = value
  	elseif address == 0xff4b then -- Window X Position
    	windowPosition[1] = value
  	end
	end
end

function readGraphicsRegisters (address, value)
  if address == 0xff42 then -- Scroll Y
    return scroll[2]
  elseif address == 0xff43 then -- Scroll X
    return scroll[1]
  elseif address == 0xff44 then -- LCDC Y-Coordinate
    return scanLine
  elseif address == 0xff45 then -- LY Compare
    return compareScanLine
  elseif address == 0xff4a then -- Window Y Position
    return windowPosition[2]
  elseif address == 0xff4b then -- Window X Position
    return windowPosition[1]
  end

  return nil
end

function getTileAddress (address)
  number = mathFloor((address - tileDataAddress[0]) / 16)
  tileAddress = (number * 16) + tileDataAddress[0]

	return tileAddress
end

function getTile (number)
	tile = {}
  for i = 0, 16 do
		tile[i + 1] = {}

		bits = toBits(get_8b(tileAddress + 1), 8) 
    for j = 1, #bits, 2 do
      tile[i + 1][j] = (bits[j + 1] * 2) + bits[j] 
		end
	end

	return tile
end

function updateTile (address, value)
  tileAddress = getTileAddress(address)	
	tile = getTile(tileAddress)
  tileData[tileAddress + 1] = tile
end
