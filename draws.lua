function game_draw()
  cls()
  camera_update()
  map()
  palt(0, false)
  juice_draw()
  actor_draw_all()
  player_draw()
  camera_reset()
  console_draw()
end