--- Convert button presses to a directional vector.
--- returns nil if no directional buttons are pressed.
--- the result of btn() is used to determine which buttons are pressed.
--- buttons bits are set as follows:
--- 1 = left
--- 2 = right
--- 4 = up
--- 8 = down
--- diagonals are combinations of these bits.
--- For example, up-left is 1 + 4 = 5.
--- The resulting vector is normalized for diagonal movement.
--- @return userdata|nil
function ButtonsToVector()
   local input_vector = nil
   local btn_mask = btn()
   -- if btn_mask != 0 then Log.trace("btn: "..tostr(btn_mask)) end
   local vec_array = {
      [1] = vec(-1, 0),
      [2] = vec(1, 0),
      [4] = vec(0, -1),
      [8] = vec(0, 1),
      -- FIXME: these values cause jittering because of rounding errors
      [5] = vec(-0.80, -0.80),
      [6] = vec(0.80, -0.80),
      [9] = vec(-0.80, 0.80),
      [10] = vec(0.80, 0.80)
   }

   for i, vector in pairs(vec_array) do
      if btn_mask == i then
         input_vector = vector
      end
   end

   -- if input_vector then Log.trace("input_vector: "..tostr(input_vector)) end

   return input_vector
end

return {
   tags = "controllable",
   callback = function(entity)
      entity.direction = ButtonsToVector()
   end
}