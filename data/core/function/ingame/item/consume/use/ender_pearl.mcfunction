playsound entity.player.teleport player @a ~ ~ ~ 1 1 0
particle dust{color:[1.0,0.0,1.0],scale:1.0} ~ ~1 ~ 0.2 0.4 0.2 0.1 20 normal @a
execute at @n[tag=stage.base] at @e[tag=game.marker.island,distance=..75,sort=random,limit=1] run tp @s ~ ~3 ~
execute at @s run particle dust{color:[1.0,0.0,1.0],scale:1.0} ~ ~1 ~ 0.2 0.4 0.2 0.1 20 normal @a
execute at @s run playsound entity.player.teleport player @a ~ ~ ~ 1 1 0