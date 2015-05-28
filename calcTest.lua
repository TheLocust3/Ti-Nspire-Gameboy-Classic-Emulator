function on.paint (gc)
	gc:drawString("A: " .. registers[1] .. " B: " .. registers[2] .. " C: " .. registers[3] .. " D: " .. registers[4], 2, 10)
	gc:drawString(" E: " .. registers[5] .. " F: " .. registers[8] .. " H: " .. registers[6] .. " L: " .. registers[7] .. " PC: " .. registers[9], 2, 30)
	gc:drawString(command, 2, 50)
end

function on.timer ()
	dispatcher()

	platform.window:invalidate()
end

timer.start(0.1)