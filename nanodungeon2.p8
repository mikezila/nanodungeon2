pico-8 cartridge // http://www.pico-8.com
version 41
__lua__
-- nano dungeon 2
-- allcaps
#include main.lua
#include updates.lua
#include draws.lua
#include util.lua
#include console.lua
#include player.lua
#include actors.lua
#include items.lua
#include intro.lua
#include juice.lua
__gfx__
00000000088990700000007008899070444444440000000044444444082000820820008208200082000000000000000000000000000000000000000000000000
000000008899a070088990708899a0704400004404444ff040000004228208222282082222820822000000000000000000000000000000000000000000000000
00700700809990708899a55580999070404004044444444f40770704200000022000000220000002000000000000000000000000000000000000000000000000
0007700000999955809999600099995540004004444aa44f40000004208908922088088220980982000000000000000000000000000000000000000000000000
0007700000aaa06000aaa00000aaa06040040004666aa66644444444209909922099099220990992000000000000000000000000000000000000000000000000
00700700009990000099900000999000404004044444444f00044000800000088000000880000008000000000000000000000000000000000000000000000000
0000000009909000009090000090990044000044444444440b344bb0888888888888888888888888000000000000000000000000000000000000000000000000
00000000000099000990990009900000444444444444444400b3b300028228220282282202822822000000000000000000000000000000000000000000000000
00000000000000000000000000000567765000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000056776500000000bb000000bb000000bb0000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000005677650000000bbbb0000bbbb0000bbbb000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000005677650000000bbbb0000bbbb0000bbbb000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000056776500000000bb000000bb000000bb0000000000000000000000000000000000000000000000000000000000000000000
00000555555555555550000055555567765555550000000000000000b000000b0000000000000000000000000000000000000000000000000000000000000000
0000056666666666665000006666666776666666b000000bbb0000bb0b0000b00000000000000000000000000000000000000000000000000000000000000000
00000567777777777650000077777777777777770bbbbbb000bbbb0000bbbb000000000000000000000000000000000000000000000000000000000000000000
00000567000000007650000077777777777777770008e0000008e0000008e0000000000000000000000000000000000000000000000000000000000000000000
000005670000000076500000666666677666666600888e0000887e0000887e700500550000500550000000000000000000000000000000000000000000000000
0000056700550000765000005555556776555555088888e0088887e0088887e00000000000000000000000000000005005000000000000000000000000000000
00000567000000007650000000000567765000008888888e8888887e8888787e0000000550055005000000000000000000000000000000000000000000000000
00000567000000007650000000000567765000002888888828888888288888880000000000000000000500550000055005500000000000000000000000000000
00000567000000007650000000000567765000000288888002888880028888800550055000000000000000000000000000000000000000000000000000000000
00000567000550007650000000000567765000000028880000288800002888000000000000000000050005500500550000550050000000000000000000000000
00000567000000007650000000000567765000000002800000028000000280000000500000000000000000000000000000000000000000000000000000000000
00000567777777777650000070777777777777777777770770000000000000070000000000000000000000000000000000000000000000000000000000000000
00000566666666666650000007000000000000000000007070000000000000070550550005505000000505500500550000550050000000000000000000000000
00000555555555555550000070000000000000000000000770000000000000070000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000070000000000000000000000770000000000000070055000500550000000055000000055005500000000000000000000000000000
00000000000000000000000070000000000000000000000770000000000000070000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000070000000000000000000000770000000000000070550050005500000000005500000005005000000000000000000000000000000
00000000000000000000000070000000000000000000000770000000000000070000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000070000000000000000000000770000000000000070005500000050000000050000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
77777777000000000000000000000000000000000000000000000000007777000000999999980000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000070000700009888888882000000000000000000000000000000000000000000000000000
00777777000000000000000000000000000000000000000000000000070000700098820000882000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000070000700098200000882000000000000000000000000000000000000000000000000000
00007777000000000000000000000000000000000000000000000000070000700088000000882000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000070000700082000000882000000000000000000000000000000000000000000000000000
00000077000000000000000000000000000000000000000000000000007777000000000009880000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000098820000000000000000000000000000000000000000000000000000
00000000000000000000000077777700070000700077770007777770077000700000000988200000000000000000000000000000000000000000000000000000
07070000007770000077700007000070070000700700007007000000077000700000009882000000000000000000000000000000000000000000000000000000
07707000070007000700070007000070070000700700000007000000070700700000098820000000000000000000000000000000000000000000000000000000
07000700070007000700070007000070070000700700000007777700070700700000988200000000000000000000000000000000000000000000000000000000
07000700070077000700070007000070070000700700777007000000070070700009888822222000000000000000000000000000000000000000000000000000
07000700007707000077700007000070070000700700007007000000070070700009888888882000000000000000000000000000000000000000000000000000
00000000000000000000000007777700077777000077770007777770070007700008888888882000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
33434343434343434343434343434353000000000000000086960000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
63000000000000000000000000000073000007170727000087970000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
63000000000000000000000000000073000006374777576776770000000000000000000000000000000000000000000000000000000000000000000000000000
__label__
88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888
88888eeeeee888888888888888888888888888888888888888888888888888888888888888888888888ff8ff8888228822888222822888888822888888228888
8888ee888ee88888888888888888888888888888888888888888888888888888888888888888888888ff888ff888222222888222822888882282888888222888
888eee8e8ee88888e88888888888888888888888888888888888888888888888888888888888888888ff888ff888282282888222888888228882888888288888
888eee8e8ee8888eee8888888888888888888888888888888888888888888888888888888888888888ff888ff888222222888888222888228882888822288888
888eee8e8ee88888e88888888888888888888888888888888888888888888888888888888888888888ff888ff888822228888228222888882282888222288888
888eee888ee888888888888888888888888888888888888888888888888888888888888888888888888ff8ff8888828828888228222888888822888222888888
888eeeeeeee888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
1111111111111ddd1d1d1ddd1ddd1ddd1dd11ddd1d1111111ddd1ddd1d111ddd11dd111111111111111111111111111111111111111111111111111111111111
1111111111111d111d1d11d11d111d1d1d1d1d1d1d1111111d1111d11d111d111d11111111111111111111111111111111111111111111111111111111111111
1ddd1ddd11111dd111d111d11dd11dd11d1d1ddd1d1111111dd111d11d111dd11ddd111111111111111111111111111111111111111111111111111111111111
1111111111111d111d1d11d11d111d1d1d1d1d1d1d1111111d1111d11d111d11111d111111111111111111111111111111111111111111111111111111111111
1111111111111ddd1d1d11d11ddd1d1d1d1d1d1d1ddd11111d111ddd1ddd1ddd1dd1111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
19191999199111991911191919911999111119991999199919911111191119191999111111111111111111111111111111111111111111111111111111111111
19991191191919111911191919191911111119991919119119191111191119191919111111111111111111111111111111111111111111111111111111111111
19191191191919111911191919191991111119191999119119191111191119191999111111111111111111111111111111111111111111111111111111111111
19991191191919111911191919191911111119191919119119191111191119191919111111111111111111111111111111111111111111111111111111111111
19191999191911991999119919991999111119191919199919191191199911991919111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
19191999199111991911191919911999111119191999199919111111191119191999111111111111111111111111111111111111111111111111111111111111
19991191191919111911191919191911111119191191119119111111191119191919111111111111111111111111111111111111111111111111111111111111
19191191191919111911191919191991111119191191119119111111191119191999111111111111111111111111111111111111111111111111111111111111
19991191191919111911191919191911111119191191119119111111191119191919111111111111111111111111111111111111111111111111111111111111
19191999191911991999119919991999111111991191199919991191199911991919111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
19191999199111991911191919911999111111991199199111991199191119991111191119191999111111111111111111111111111111111111111111111111
19991191191919111911191919191911111119111919191919111919191119111111191119191919111111111111111111111111111111111111111111111111
19191191191919111911191919191991111119111919191919991919191119911111191119191999111111111111111111111111111111111111111111111111
19991191191919111911191919191911111119111919191911191919191119111111191119191919111111111111111111111111111111111111111111111111
19191999191911991999119919991999111111991991191919911991199919991191199911991919111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
19191999199111991911191919911999111119991911199919191999199911111911191919991111111111111111111111111111111111111111111111111111
19991191191919111911191919191911111119191911191919191911191911111911191919191111111111111111111111111111111111111111111111111111
19191191191919111911191919191991111119991911199919991991199111111911191919991111111111111111111111111111111111111111111111111111
19991191191919111911191919191911111119111911191911191911191911111911191919191111111111111111111111111111111111111111111111111111
19191999191911991999119919991999111119111999191919991999191911911999119919191111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
19191999199111991911191919911999111119991999199919991199111119111919199911111111111111111111111111111111111111111111111111111111
19991191191919111911191919191911111111911191191119991911111119111919191911111111111111111111111111111111111111111111111111111111
19191191191919111911191919191991111111911191199119191999111119111919199911111111111111111111111111111111111111111111111111111111
19991191191919111911191919191911111111911191191119191119111119111919191911111111111111111111111111111111111111111111111111111111
19191999191911991999119919991999111119991191199919191991119119991199191911111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
19191999199111991911191919911999111119991991199919991199111119111919199911111111111111111111111111111111111111111111111111111111
19991191191919111911191919191911111111911919119119191919111119111919191911111111111111111111111111111111111111111111111111111111
19191191191919111911191919191991111111911919119119911919111119111919199911111111111111111111111111111111111111111111111111111111
19991191191919111911191919191911111111911919119119191919111119111919191911111111111111111111111111111111111111111111111111111111
19191999191911991999119919991999111119991919119119191991119119991199191911111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111711111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111771111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111777111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111777711111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111771111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111117111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888
82888222822882228888822288828222888888888888888888888888888888888888888888888888888888888888888882228882822282288222822288866688
82888828828282888888828888288882888888888888888888888888888888888888888888888888888888888888888882828828828288288282888288888888
82888828828282288888822288288882888888888888888888888888888888888888888888888888888888888888888882828828822288288222822288822288
82888828828282888888888288288882888888888888888888888888888888888888888888888888888888888888888882828828828288288882828888888888
82228222828282228888822282888882888888888888888888888888888888888888888888888888888888888888888882228288822282228882822288822288
88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888

__gff__
0000000003030300000000000000000001010101010202000000000000000000010001010100000000000000000000000101010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__map__
1011111112000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
203c293b14111112000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2039283821063b22000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
202c212128212122000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3023213821043a22000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00202c052a2a2b22000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0030313131313132000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000