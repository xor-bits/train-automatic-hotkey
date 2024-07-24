script.on_event("train-to-auto", function(event)
  local player = game.get_player(event.player_index)
  if not player then return end

  local selected = player.selected
  if not selected then return end

  if selected.type ~= "locomotive" then return end

  selected.train.manual_mode = not selected.train.manual_mode
end)
