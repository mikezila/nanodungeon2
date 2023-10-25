function actor_setup()
  actors = {}
end

--This function makes me suspicious.
--It works, but I don't like it.
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

--Probably don't need this if we're just calling the 
--actor's own AI function, but leaving it for now
--just in case we need to do something with all actors
--and don't want to bloat the AI functions.
function actor_update(a)
  a.t(a)
end

function actor_draw(a)
  spr(a.s[util_tick(#a.s)], a.x * 8, a.y * 8)
end

--simple ai for actors that don't think.
function actor_think_dummy(a)
  if actor_check_deleted(a) then return end
  if a.hp <= 0 then
    a.f(a)
    a.del = true
  end
end

--This function isn't clear at all, but what it does
--is check if we're on the same tile as the player and
--if we are call our activation function and then delete
--ourselves. This lets items check if they're picked up
--and saves us from having to query the actor list to find
--items that are on the player's current tile.
function actor_think_item(a)
  if actor_check_deleted(a) then return end
  if p.x == a.x and p.y == a.y then
    a.f(a)
    a.del = true
  end
end

function actor_think_droploot(a)
  local loot =   actor_spawn_herb({a.x, a.y})
  console_write(a.name .. ' drops ' .. loot.name .. '!')
end

function actor_check_deleted(a)
  if a.del then 
    del(actors, a)
    return true
  end
  return false
end

--Actors that block are considered monsters that we will
--attack, actors that don't block are considered items.
--This is a foolproof system that will surely never cause
--any edge cases to arrise that make me have to overhaul
--the whole damn actor system. Surely.
function actor_spawn_herb(loc)
  local herb = {
    name = '[herb]',
    x = loc[1], --location
    y = loc[2],
    b = false, --blocking?
    s = {21, 22, 23, 22}, --animation frames
    f = item_grab_herb, --activate function
    t = actor_think_item, --think function
    del = false --delete next tick?
  }
  add(actors, herb)
  return herb
end

function actor_spawn_gem(loc)
  local gem = {
    name = '[gem]',
    x = loc[1],
    y = loc[2],
    b = false,
    s = {37, 38, 39, 38},
    f = item_grab_gem,
    t = actor_think_item,
    del = false
  }
  add(actors, gem)
  return gem
end

function actor_spawn_dummy()
  local dummy = {
    name = 'dummy',
    x = p.x+1,
    y = p.y,
    b = true,
    s = {7, 8, 9, 8},
    f = actor_think_droploot,
    t = actor_think_dummy,
    hp = 3,
    attack = 1,
    del = false
  }
  add(actors, dummy)
  return dummy
end