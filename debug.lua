function checkCommand (command)
  command = command

  if command == "start" or command == "start normal" then
    startCommand(1) 
  elseif command == "start debug" then 
    startCommand(2)
  else
    commandError = "Unknown command '" .. command .. "'"
    commandString = ""
  end
end

function startCommand (input)
  mode = input
end
