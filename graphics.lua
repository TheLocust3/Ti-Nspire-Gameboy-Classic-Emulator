function checkGraphicsRegisters (address, value)
  if address == 0xff40 then -- LCD Control

  elseif address == 0xff41 then -- LCDC Status

  elseif address == 0xff42 then -- Scroll Y

  elseif address == 0xff43 then -- Scroll X

  elseif address == 0xff44 then -- LCDC Y-Coordinate

  elseif address == 0xff45 then -- LY Compare

  elseif address == 0xff46 then -- DMA Transfer and Start Address

  elseif address == 0xff47 then -- BG & Window Palette Data

  elseif address == 0xff48 then -- Object Palette 0 Data

  elseif address == 0xff49 then -- Object Palette 1 Data

  elseif address == 0xff4a then -- Window Y Position

  elseif address == 0xff4b then -- Window X Position

  end
end