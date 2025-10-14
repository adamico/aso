local Entity = Class("Entity")

function Entity:initialize(world, loc, tags_and_args)
   local tags = tags_and_args.tags
   local args = tags_and_args.args
   world.ent(tags, args)
   loc.add(self, args.x, args.y, args.width, args.height)
end

return Entity
