function on.paint (gc)
	gc:drawString("A: " .. toHex(registers[1]) .. " B: " .. toHex(registers[2]) .. " C: " .. toHex(registers[3]) .. " D: " .. toHex(registers[4]), 2, 10)
	gc:drawString(" E: " .. toHex(registers[5]) .. " F: " .. toHex(registers[8]) .. " H: " .. toHex(registers[6]) .. " L: " .. toHex(registers[7]) .. " PC: " .. toHex(registers[9]), 2, 30)
	gc:drawString(command, 2, 50)
end

function on.timer ()
	dispatcher()

	platform.window:invalidate()
end

timer.start(0.01)