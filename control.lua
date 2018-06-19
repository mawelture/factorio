script.on_event(defines.events.on_player_created, function(event)
    local player = game.players[event.player_index]
    player.insert{name="ultimate-beacon", count=1}
    player.insert{name="ultimate-card", count=4}
    player.insert{name="iron-plate", count=20}
end)
