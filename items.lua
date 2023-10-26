--These are not actually items, as real items are actors.
--These are interactable terrain blocks placed by the map.
--The name "item" is leftover from when I was going to...
--you know what it doesn't matter just they're terrain ok?

--logic based on graphical assets very nice cool
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
