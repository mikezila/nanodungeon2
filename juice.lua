function juice_setup()
  fx = {}
end

function juice_update()
  foreach(fx, function(i)
    i.x += i.xv
    i.y += i.yv
    i.t -= 1
    if i.t <= 0 then
      del(fx, i)
    end
  end)
end

function juice_draw()
  foreach(fx, function(i)
    pset(i.x, i.y, i.c)
  end)
end

function juice_waterfall(loc, height, density)
  density = density or 1
  local colors = { 1, 12 }
  for i=1,density do
    local particle = {
      x = util_rndi(loc[1] * 8, (loc[1] * 8) + 7),
      y = loc[2] * 8,
      c = colors[util_rndi(1, 2)],
      xv = 0,
      yv = 1,
      t = height * 8
    }
    add(fx, particle)
  end
end