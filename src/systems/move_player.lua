return {
    tags = "player",
    callback = function(player)
        if not player.direction then return end
        
        player.x += player.direction.x * player.speed.x
        player.y += player.direction.y * player.speed.y
    end
}