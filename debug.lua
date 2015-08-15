Debugger = class()

function Debugger:init()
  self.command = ""
  self.error = "Type a command:"
  -- Mode: 0 = None, 1 = Normal, 2 = Debug
  self.mode = 0
  self.render = "" 
  self.step = false
  self.address = -1
  self.stopOn = "Completely random string"
end

function Debugger:setCommand(value)
  self.command = value
end

function Debugger:checkStopOn(opcode)
  lowerOpcode = string.lower(opcode)
  if lowerOpcode:find(self.stopOn) ~= nil then
    stop = true
  end
end

function Debugger:check()
  self:clear()
  opcode = string.lower(self.command)

  if opcode == "start" or command == "start normal" then
    self:startCommand(1) 
  elseif opcode == "start debug" then 
    self:startCommand(2)
  elseif opcode == "step" or opcode == "s" then
    self:stepCommand()
  elseif opcode == "registers" then
    self:registersCommand()
  elseif opcode == "flags" then
    self:flagsCommand()
  elseif opcode:match("%memory") then
    self:memoryCommand(opcode)
  elseif opcode:match("until") then
    self:untilCommand(opcode )
  elseif opcode == "help" then
    self:helpCommand()
  else
    self.error = "Unknown command '" .. opcode .. "'. Try 'help'"
  end

  self.command = ""
end

function Debugger:renderText(gc, opcode)
  if self.mode == 0 or self.mode == 2 then
    gc:drawString("Mode " .. self.mode, 2, 0)

    if self.render == "HELP" then
      self:renderHelp(gc)
    elseif self.render == "REGISTERS" then
      self:renderRegisters(gc)
    elseif self.render == "FLAGS" then
      self:renderFlags(gc)
    elseif self.address ~= -1 then
      self:renderMemory(gc)
    end

    if self.mode == 2 and self.render ~= "HELP" then
      gc:drawString(pcHex .. ": " ..  opcode, 2, 30)
    end

    gc:drawString(self.error, 2, 170)
    gc:drawString(self.command, 2, 190)
  end 
end

function Debugger:clear()
  self.error = "Type a command:"
  self.render = ""
  self.address = -1
end

function Debugger:memoryCommand(command)
  self.address = split(command, " ")
  self.address = tonumber(self.address[2])
end

function Debugger:untilCommand(command)
  self.stopOn = split(command, " ")
  self.stopOn = stopOn[2]
  stop = false
end

function Debugger:flagsCommand()
  self.render = "FLAGS"
end

function Debugger:registersCommand()
  self.render = "REGISTERS"
end

function Debugger:stepCommand()
  self.step = true
  stop = false
end

function Debugger:helpCommand()
  render = "HELP"
end

function Debugger:startCommand(input)
  self.mode = input

  if input == 1 then
    self:clear()
    stop = false
    self.stepping = false
  elseif input == 2 then
    stop = true
  end
end

function Debugger:renderMemory(gc)
  gc:drawString(toHex(self.address) .. ": " .. toHex(memory:read_8b(self.address)), 2, 50)
end

function Debugger:renderFlags(gc)
  gc:drawString("Zero " .. tostring(zeroFlag:isSet()), 2, 50)
  gc:drawString("Subtract " .. tostring(subtractFlag:isSet()), 2, 70)
  gc:drawString("Half Carry " .. tostring(halfCarryFlag:isSet()), 2, 90)
  gc:drawString("Carry " .. tostring(carryFlag:isSet()), 2, 110)
end

function Debugger:renderRegisters(gc)
    gc:drawString("A: " .. toHex(registers[1]) .. " B: " .. toHex(registers[2]) .. " C: " .. toHex(registers[3]) .. " D: " .. toHex(registers[4]), 2, 50)
    gc:drawString("E: " .. toHex(registers[5]) .. " F: " .. toHex(registers[8]) .. " H: " .. toHex(registers[6]) .. " L: " .. toHex(registers[7]) .. " SP: " .. toHex(registers[9]), 2, 70)
end

function Debugger:renderHelp(gc)
  gc:drawString("Commands:", 2, 20)
  gc:drawString("'start [MODE]' - Starts in specified mode", 2, 40)
  gc:drawString("    Modes: 'normal' or 'debug'", 2, 60)

  gc:drawString("'registers' - Show register values", 2, 80)
  gc:drawString("'memory [ADDRESS]' - Show the value stored", 2, 100) 
  gc:drawString("    in specified address", 2, 120)
  gc:drawString("'until [OPCODE]' Run until specified opcode", 2, 140)
end
