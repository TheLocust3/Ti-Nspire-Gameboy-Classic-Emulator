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
  if self.custom.check() then
    if self.check() then
      halt = false
      

      self.custom.run()
    end
  else
    self.custom.fail()
  end
end
