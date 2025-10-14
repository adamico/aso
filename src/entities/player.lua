local player = world.ent("drawable,animatable,player", {
   x = PLAYER_STARTING_POSITION.starting_position.x,
   y = PLAYER_STARTING_POSITION.starting_position.y,

   width = 20,
   height = 32,
   sprite_index_offset = PLAYER_STARTING_POSITION.sprite_index_offset,
   animation_start = 0,
   animation_end = 1,
   animation_frame_rate = 30,
   sprite = 0,
   score = 0,
})

loc.add(player, player.x, player.y, player.width, player.height)