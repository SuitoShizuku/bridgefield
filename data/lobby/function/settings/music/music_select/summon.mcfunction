tag @s add on
summon item_display ~ ~-1.5 ~ {Tags:[ms,lobby,up,display,rotation],item:{id:"minecraft:music_disc_otherside"},teleport_duration:5}

execute as @e[tag=ms,tag=up] at @s run tp @s ~ ~2 ~