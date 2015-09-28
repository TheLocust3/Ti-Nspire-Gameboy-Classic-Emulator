Button = class()

function Button:init(character)
  self.character = character
  self.pressed = false
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
  sendMessage("Press: " .. self.character)
end

function Button:release()
  if self.pressed then
    self.pressed = false
    sendMessage("Release: " .. self.character)
  end
end
