execute unless score @s status.mp >= @s bf if function core:ingame/mp/fail run return 1
scoreboard players operation @s status.mp -= @s bf
return 0