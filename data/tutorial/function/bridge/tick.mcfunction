particle dust{color:[0.0,1.0,0.0],scale:1.0} ~ ~1 ~ 0.3 0 0.3 0 2 normal @a[tag=tutorial.runner]
execute align xyz positioned ~-3 ~-4 ~1 run tp @a[dx=6,dz=4,dy=0,tag=tutorial.runner] ~3.5 ~5 ~-3

execute if entity @s[tag=!tutorial.place_bridge] run return 0
execute align xyz positioned ~-1 ~ ~1.5 store result score @s bridge.players if entity @a[tag=tutorial.runner,dx=2,dy=2,dz=3]
execute if score @s bridge.players < @s bridge.players.delta run function tutorial:bridge/break
scoreboard players operation @s bridge.players.delta = @s bridge.players