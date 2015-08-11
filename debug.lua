function checkCommand (command)
  clear()
  command = string.lower(command)

  if command == "start" or command == "start normal" then
    startCommand(1) 
  elseif command == "start debug" then 
    startCommand(2)
  elseif command == "step" or command == "s" then
    stepCommand()
  elseif command == "registers" then
    registersCommand()
  elseif command == "flags" then
    flagsCommand()
  elseif command:match("%memory") then
    inputAddress = split(command, " ")
    inputAddress = tonumber(inputAddress[2])
  elseif command:match("until") then
    stopOn = split(command, " ")
    stopOn = stopOn[2]
    stop = false
  elseif command == "help" then
    helpCommand()
  else
    commandError = "Unknown command '" .. command .. "'. Try 'help'"
  end

  commandString = ""
end

function memoryText (gc)
  gc:drawString(toHex(inputAddress) .. ": " .. toHex(get_8b(inputAddress)), 2, 50)
end

function flagsCommand ()
  renderFlags = true
end

function flagsText (gc)
  gc:drawString("Zero " .. tostring(zeroFlag:isSet()), 2, 50)
  gc:drawString("Subtract " .. tostring(subtractFlag:isSet()), 2, 70)
  gc:drawString("Half Carry " .. tostring(halfCarryFlag:isSet()), 2, 90)
  gc:drawString("Carry " .. tostring(carryFlag:isSet()), 2, 110)
end

function registersCommand ()
  renderRegisters = true
end

function registersText (gc)
    gc:drawString("A: " .. toHex(registers[1]) .. " B: " .. toHex(registers[2]) .. " C: " .. toHex(registers[3]) .. " D: " .. toHex(registers[4]), 2, 50)
    gc:drawString("E: " .. toHex(registers[5]) .. " F: " .. toHex(registers[8]) .. " H: " .. toHex(registers[6]) .. " L: " .. toHex(registers[7]) .. " SP: " .. toHex(registers[9]), 2, 70)
end

function stepCommand ()
  stepping = true
  stop = false
end

function clear ()
  commandError = "Type a command:"
  renderRegisters = false 
  renderHelp = false
  inputAddress = -1
end

function helpCommand ()
  renderHelp = true
end

function helpText (gc)
  gc:drawString("Commands:", 2, 20)
  gc:drawString("'start [MODE]' - Starts in specified mode", 2, 40)
  gc:drawString("    Modes: 'normal' or 'debug'", 2, 60)

  gc:drawString("'registers' - Show register values", 2, 80)
  gc:drawString("'memory [ADDRESS]' - Show the value stored", 2, 100) 
  gc:drawString("    in specified address", 2, 120)
  gc:drawString("'until [OPCODE]' Run until specified opcode", 2, 140)
end

function startCommand (input)
  mode = input

  if input == 1 then
    clear()
    stop = false
    stepping = false
  elseif input == 2 then
    stop = true
  end
end
