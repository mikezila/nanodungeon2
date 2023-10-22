function actor_setup()
  actors = {}
end

function actor_blocking_at(loc)
  local result = nil
  foreach(actors, function(actor)
      if actor.x == loc[1] and actor.y == loc[2] then
        if actor.b then result = actor end
      end
    end)
  return result
end

function actor_update_all()
  foreach(actors, actor_update)
end

function actor_draw_all()
  foreach(actors, actor_draw)
end

function actor_update(a)
  a.t(a)
end

function actor_draw(a)
  spr(a.s[util_tick(#a.s)], a.x * 8, a.y * 8)
end

--simple ai for actors that don't think.
--just check if deleted and nothing else
function actor_think_dummy(a)
  actor_check_deleted(a)
end

function actor_think_item(a)
  if actor_check_deleted(a) then return end
  if p.x == a.x and p.y == a.y then
    a.f()
    a.del = true
  end
end

function actor_think_droploot(a); end

function actor_check_deleted(a)
  if a.del then 
    del(actors, a)
    return true
  end
  return false
end

function actor_spawn_herb(loc)
  local herb = {
    x = loc[1], --location
    y = loc[2],
    b = false, --blocking?
    s = {21, 22, 23, 22}, --animation frames
    f = item_grab_herb, --activate function
    t = actor_think_item, --think function
    del = false --delete next tick?
  }
  add(actors, herb)
end

function actor_spawn_gem(loc)
  local gem = {
    x = loc[1],
    y = loc[2],
    b = false,
    s = {37, 38, 39, 38},
    f = item_grab_gem,
    t = actor_think_item,
    del = false
  }
  add(actors, gem)
end

function actor_spawn_dummy()
  local dummy = {
    x = p.x+1,
    y = p.y,
    b = true,
    s = {7, 8, 9, 8},
    f = actor_think_droploot,
    t = actor_think_dummy,
    del = false
  }
  add(actors, dummy)
end