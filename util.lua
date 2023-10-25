function util_setup()
  --This vector maps to the keycodes for the pico8
  --directional pad. LRUD. IMPORTANT: The pico8
  --keycodes start at 0, but Lua is Lua, so always
  --add 1 to the keycode value to use this table.
  --I could probably handle that via a function
  --but you're not the boss of me so just handle it
  --yourself and don't forget dumbo.
  vector = {{-1,0}, {1,0}, {0,-1}, {0,1}}
  pi = 3.14
end

--This uses the global tick timer, 't' to provide
--a tick counter at a chosen speed. For example if
--called with (3, 15) you'll get a sequence 1 2 3
--with the number advancing ever 15 ticks before it
--wraps around.
function util_tick(steps, speed)
  local speed = speed or 15
  return flr( t / 15 ) % steps + 1
end

--This moves 'value' 1 closer to 'target'.
--Used in offset-based animations.
--This seems slightly smelly, like there's
--A Better Way(tm) to do this, but oh well.
--At least it's legible.
function util_step(value, target)
  if value == target then return value end
  if value < target then return value+1 end
  if value > target then return value-1 end
end

--I wish Pico8 came with some overloads so that wrappers
--like this weren't needed but it doesn't.
function util_mget(dest)
  return mget(dest[1], dest[2])
end

--random int between lower and upper, inclusive
function util_rndi(lower, upper)
  local range = (upper - lower) + 1
  return flr(rnd(range) + lower)
end

function util_string_width(str)
  return #str * 4
end

--todo: not implemented
function util_string_flow(str, width)
  width = width or 128
  local lines = {str}

  return lines
end
