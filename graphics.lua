function writeGraphicsRegisters (address, value)
  bValue = toBits(value, 8)

  if address == 0xff40 then -- LCD Control
    lcdDisplay = bValue[8] == 0 and false or true
    windowTileLocation = bValue[7] == 1 and 0x9800 or 0x9c00
    windowDisplay = bValue[6] == 0 and true or false
    tileData = Value[5] == 0 and 0x8800 or 0x8000
    bgTileLocation = bValue[4] == 0 and 0x9800 or 0x9c00
    spriteHeight = bValue[3] == 0 and 8 or 16
    spriteDisplay = bValue[2] == 0 and false or true
    bgWindowDisplay = bValue[1] == 0 and false or true
  elseif address == 0xff41 then -- LCDC Status
    write_8b(0xff41, value)
  elseif address == 0xff42 then -- Scroll Y
    scroll[2] = value
  elseif address == 0xff43 then -- Scroll X
    scroll[1] = value
  elseif address == 0xff45 then -- LY Compare
    compareScanLine = value
    stat = get_8b(0xff41)
    bStat = toBits(stat, 8)
    if compareScanLine == scanLine then
      bStat[3] = 1
    else
      bStat[3] = 0
    end
    write_8b(0xff41, toInt(bStat))
  elseif address == 0xff46 then -- DMA Transfer and Start Address

  elseif address == 0xff47 then -- BG & Window Palette Data
    bgWinPalette = value -- Check implementation
  elseif address == 0xff48 then -- Object Palette 0 Data
    objPalette0 = value -- Check implementation
  elseif address == 0xff49 then -- Object Palette 1 Data
    objPalette1 = value -- Check implementation
  elseif address == 0xff4a then -- Window Y Position
    windowPosition[2] = value
  elseif address == 0xff4b then -- Window X Position
    windowPosition[1] = value
  end
end

function readGraphicsRegisters (address, value)
  if address == 0xff44 then -- LCDC Y-Coordinate
    return scanLine
  elseif address == 0xff45 then -- LY Compare
    return compareScanLine
  end

  return nil
end
