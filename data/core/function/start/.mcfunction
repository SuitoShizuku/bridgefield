setblock 0 2 5 minecraft:waxed_copper_bulb[lit=true]
scoreboard players set $ready bf 1
title @a times 0t 30t 0t 
schedule function core:start/count_0 5.3s
schedule function core:start/count_1 4.3s
schedule function core:start/count_2 3.3s
schedule function core:start/count_3 2.3s
schedule function core:start/count_4 1.3s
schedule function core:start/count_5 0.3s