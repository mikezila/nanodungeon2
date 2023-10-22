function item_setup()
  gizmos = {
    [4]=item_box,
    [5]=item_chest,
    [6]=item_sign
  }
end

function item_box(loc)
  mset(loc[1], loc[2], 33)
  actor_spawn_herb(loc)
  console_write("[herb] is revealed!")
end

function item_chest(loc)
  mset(loc[1], loc[2], 33)
  actor_spawn_gem(loc)
  console_write("[gem] is revealed!")
end

function item_grab_herb()
  console_write("grabbed [herb]!")
end

function item_grab_gem()
  p.cash += 1
  console_write("grabbed [gem]!")
end

function item_sign(loc)
  console_write("hit boxes to reveal items!")
end
