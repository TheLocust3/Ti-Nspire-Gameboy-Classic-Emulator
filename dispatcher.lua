function runFunction (cmd)

end

function dispatcher ()
	while true
		runFunction(rom[pc + 1])
	end
end