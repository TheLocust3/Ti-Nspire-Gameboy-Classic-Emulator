function checkCommand (command)
  command = string.lower(command)

  if command == "start" or command == "start normal" then
    startCommand(1) 
  elseif command == "start debug" then 
    startCommand(2)
  elseif command == "help" then
    helpCommand()
  else
    commandError = "Unknown command '" .. command .. "'. Type 'help' for a list of commands"
  end

  commandString = ""
end

function helpCommand ()
  renderHelp = true
end

function helpText (gc)
  gc:drawString("Commands:", 2, 0)
  gc:drawString("'start [MODE]' - Starts in specified mode", 2, 30)
  gc:drawString("    Modes: 'normal' or 'debug'", 2, 50)
end

function startCommand (input)
  mode = input
end
