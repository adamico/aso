local System = Class("System")

function System:initialize(world, tags_and_callback)
   self.process = world.sys(tags_and_callback.tags, tags_and_callback.callback)
end

return System
