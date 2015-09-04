function on.paint (gc)
  if debugger.mode == 1 then
    gc:drawString("A: " .. toHex(registers[1]) .. " B: " .. toHex(registers[2]) .. " C: " .. toHex(registers[3]) .. " D: " .. toHex(registers[4]), 2, 10)
    gc:drawString("E: " .. toHex(registers[5]) .. " F: " .. toHex(registers[8]) .. " H: " .. toHex(registers[6]) .. " L: " .. toHex(registers[7]) .. " SP: " .. toHex(registers[9]), 2, 30)
    gc:drawString(toHex(pc) .. " " .. command, 2, 50)
    gc:drawString("Timer Loop: " .. time .. " ms", 2, 70)
    gc:drawString("Timer Speed: " .. speed, 2, 90)
    gc:drawString("Time Until Next Command: " .. c, 2, 110)
    gc:drawString("DIV Register: " .. toHex(memory:read_8b(0xff04)), 2, 130)
    gc:drawString("Timer Register: " .. toHex(memory:read_8b(0xff05)), 2, 150)
  end

	if debugger.mode == 0 then
		testDraw(gc)
	end

  debugger:renderText(gc, command)
end
