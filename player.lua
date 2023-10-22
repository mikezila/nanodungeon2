function player_setup()
  p = {
    hp = 10,
    attack = 1,
    cash = 0,
    items = {},
    x = 2,
    y = 2,
    s = { 2, 1, 2, 3 },
    ox = 0,
    oy = 0,
    a = {}
  }
end

function player_update()
  if player_animate() then return end
  for i = 0,3 do
    local press = btnp(i)
    if press then
      player_check_move(i)
      break
    end
  end
  for i = 4,5 do
    local press = btnp(i)
    if press then
      actor_spawn_dummy()
    end
  end
end

function player_draw()
  spr(p.s[util_tick(#p.s)], (p.x * 8) + p.ox, (p.y * 8) + p.oy)
end

function player_animate()
  if p.a[1] == nil then return false end
  p.ox = util_step(p.ox, p.a[1][1])
  p.oy = util_step(p.oy, p.a[1][2])
  if p.ox == p.a[1][1] and p.oy == p.a[1][2] then
    deli(p.a, 1)
  end
  return true
end

function player_check_move(dir)
  local dest = { p.x + vector[dir+1][1], p.y + vector[dir+1][2] }

  if fget(util_mget(dest), 0) then --blocked by terrain?
    player_bump_animation(dir)
    player_terrain_interact(dest)
    return
  end
  
  local actor = actor_blocking_at(dest)
  if actor then --blocked by actor?
    player_bump_animation(dir)
    player_actor_interact(actor)
    return
  end
  
  player_do_move(dir)
end

function player_do_move(dir)
  p.x += vector[dir+1][1]
  p.y += vector[dir+1][2]
  p.ox = -vector[dir+1][1] * 8
  p.oy = -vector[dir+1][2] * 8
  add(p.a, {0,0})
end

function player_bump_animation(dir)
  add(p.a, {vector[dir+1][1] * 4, vector[dir+1][2] * 4})
  add(p.a, {0,0})
end

function player_terrain_interact(loc)
  local hit = util_mget(loc)
  if fget(hit, 1) then
    gizmos[hit](loc)
  end
end

function player_actor_interact(actor)
  actor.hp -= p.attack
end
