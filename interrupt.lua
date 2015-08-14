Interrupt = class()

-- custom = A table with a function that can be called by running custom.run(), custom.check(), and custom.fail()
-- location = The location that gets called when the interrupt is triggered
-- bit = Bit of the interrupt in the ime register
function Interrupt:init(custom, location, bit)
  self.custom = custom
  self.location = location
  self.bit = bit
end

function Interrupt:check()
  return stop == false and ime == true and bitwise_8b(get_8b(0xffff), self.bit) > 0
end

function Interrupt:callInterrupt()
  flags = toBits(get_8b(0xff0f), 8)
  flags[self.bit] = 1
  write_8b(0xff0f, toInt(flags))

  pc = self.location
  DI()
  call(nil, pc)
end

function Interrupt:run()
  if self.custom.check ~= nil and self.custom.check() then
    if self.check() then
      halt = false
      if self.custom.run ~= nil then
        self.custom.run()
      end

      self.callInterrupt()
    end
  elseif self.custom.fail ~= nil then
    self.custom.fail()
  end
end

vBlankCheck = function ()
  return vBlank >= 59
end

vBlankRun = function ()
  vBlank = 0
end

vBlankFail = function ()
  flags = toBits(get_8b(0xff0f), 8)
  flags[1] = 0
  write_8b(0xff0f, toInt(flags))

  vBlank = vBlank + ((timer.getMilliSecCounter() - old) * speedScaler)
end

timerOverflowCheck = function ()
  return get_8b(0xff05) > 0xff
end

timerOverflowRun = function ()
  write_8b(0xff05, 0)
end

scanLineCheck = function ()
  return scanLine == compareScanLine and bitwiseAnd_8b(0xff41, 0x40) > 0
end
