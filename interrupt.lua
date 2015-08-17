Interrupt = class()

-- custom = A table with a function that can be called by running custom.run(), custom.check(), and custom.fail(). It also stores any nessecary variables
-- location = The location that gets called when the interrupt is triggered
-- bit = Bit of the interrupt in the ime register
function Interrupt:init(custom, location, bit)
  self.custom = custom
  self.location = location
  self.bit = bit
end

function Interrupt:check()
  return stop == false and ime == true and bitwise_8b(memory:read_8b(0xffff), self.bit) > 0
end

function Interrupt:callInterrupt()
  flags = toBits(memory:read_8b(0xff0f), 8)
  flags[self.bit] = 1
  memory:write_8b(0xff0f, toInt(flags))

  pc = self.location
  DI()
  call(nil, pc)
end

function Interrupt:run()
  if self:check() then
    if self.custom.check ~= nil and self.custom.check(self.custom.variable) then
      halt = false
      if self.custom.run ~= nil then
        self.custom.variable = self.custom.run(self.custom.variable)
      end

      self:callInterrupt()

      return true
    elseif self.custom.fail ~= nil then
      self.custom.variable = self.custom.fail(self.custom.variable)
    end

    return false
  end
end

vBlankCheck = function (vBlank)
  return vBlank >= 59
end

vBlankRun = function (vBlank)
  vBlank = 0
  return vBlank
end

vBlankFail = function (vBlank)
  flags = toBits(memory:read_8b(0xff0f), 8)
  flags[1] = 0
  memory:write_8b(0xff0f, toInt(flags))

  vBlank = vBlank + ((timer.getMilliSecCounter() - old) * speedScaler)
  return vBlank
end

timerOverflowCheck = function (variable)
  return memory:read_8b(0xff05) > 0xff
end

timerOverflowRun = function (variable)
  memory:write_8b(0xff05, 0)
end

scanLineCheck = function (variable)
  return scanLine == compareScanLine and bitwiseAnd_8b(0xff41, 0x40) > 0
end
