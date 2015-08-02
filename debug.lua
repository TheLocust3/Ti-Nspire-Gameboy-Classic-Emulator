function checkCommand (command)
  clear()
  command = string.lower(command)

  if command == "start" or command == "start normal" then
    startCommand(1) 
  elseif command == "start debug" then 
    startCommand(2)
  elseif command == "help" then
    helpCommand()
  else
    commandError = "Unknown command '" .. command .. "'. Try 'help'"
  end

  commandString = ""
end

function clear ()
  commandError = "Type a command:"
  renderHelp = false
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
