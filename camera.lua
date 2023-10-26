function camera_setup(); end

function camera_update()
  camera(util_find_camera(p.x, p.y))
end

function camera_reset()
  camera()
end
