function _init()
  t = 0
  util_setup()
  intro_setup()
  console_setup()
  player_setup()
  actor_setup()
  camera_setup()
  item_setup()
  juice_setup()
  update = intro_update
  draw = intro_draw
end

function _update60()
  t += 1
  update()
end

function _draw()
  draw()
end
