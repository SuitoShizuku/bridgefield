tag @s add on
summon item_display ~ ~-1.5 ~ {Tags:[ms,lobby,up,display],item:{id:"minecraft:music_disc_otherside"},teleport_duration:5}

execute as @e[tag=music_selector,tag=up] at @s run tp @s ~ ~2 ~