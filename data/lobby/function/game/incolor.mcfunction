tag @s remove red
tag @s remove blue
tag @s remove yellow
tag @s remove green
tag @s remove orange
tag @s remove pink
tag @s remove cyan
tag @s remove white
$tag @s add $(color)
tag @s add setcolor
effect clear @s
effect give @s resistance infinite 4 true
effect give @s saturation infinite 0 true
effect give @s instant_health infinite 0 true
playsound block.note_block.chime master @s ~ ~ ~ 1 2 1
title @s actionbar ""