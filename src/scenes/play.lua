local Play = SceneManager:addState("Play")
local System = require("System")
local Entity = require("Entity")

function Play:enteredState()
   self.world = eggs()
   self.loc = locus()

   self:_setupEntities()
   self:_setupSystems()
   Log.trace("Entered Play scene")
end

function Play:update()
   -- update game logic here
   self.control:process()
   self.movePlayer:process()
end

function Play:draw()
   cls()
   self.drawEntities:process()
end

function Play:exitedState()
   Log.trace("Exited Play scene")
end

function Play:_setupEntities()
   self.player = Entity:new(self.world, self.loc, require("player"))
   self.playing_area = Entity:new(self.world, self.loc, require("playing_area"))
end

function Play:_setupSystems()
   self.control = System:new(self.world, require("control"))
   self.drawEntities = System:new(self.world, require("draw_entities"))
   self.movePlayer = System:new(self.world, require("move_player"))
end



return Play
