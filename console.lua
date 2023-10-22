function console_setup()
  con = { '', '', '' }
end

function console_write(msg)
  add(con, msg, 1)
  deli(con, 4)
end

function console_draw()
  map(0, 61, 0, 109)
  print(con[1], 2, 111, 7)
  print(con[2], 2, 117, 6)
  print(con[3], 2, 123, 5)
end
