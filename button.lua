Button = class()

function Button:init(character)
  self.character = character
  self.pressed = false
  self.interruptStatus = false
end

function Button:checkInterrupt()
  if self.interruptStatus then
    self.interruptStatus = false
    return true
  end
  
  return false
end

function Button:check(pressedButton)
  if pressedButton == self.character then
    self:press()
  else
    self:release()
  end
end

function Button:press()
  self.pressed = true
  self.interruptStatus = true
  sendMessage("Press: " .. self.character)
end

function Button:release()
  if self.pressed then
    self.pressed = false
    self.interruptStatus = true
    sendMessage("Release: " .. self.character)
  end
end
