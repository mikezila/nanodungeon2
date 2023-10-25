function intro_setup()
  intro = {
    timeout = 300,
    stopy = 52,
    y=-24
  }
end

function intro_update()
  if btnp(4) or btnp(5) then
    intro = nil
    update = game_update
    draw = game_draw
    return
  end
  if intro.timeout == 0 then 
    update = game_update
    draw = game_draw
    intro = nil --extreme memory management lmao
    return
  end
  if intro.y < intro.stopy then intro.y +=1 end
  intro.timeout -= 1
end

function intro_draw()
  cls()
  map(17, 61, 25, intro.y)
end
