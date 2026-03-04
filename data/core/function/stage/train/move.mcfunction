execute if score $train.onRail bf matches 1 as @n[tag=game.train.base] at @s if entity @s[z=300,dz=46,x=85,dx=0,y=2,dy=0] run return run function core:stage/train/stop
execute as @n[tag=game.train.base] at @s run tp @s ~ ~ ~-0.5 0.0 0.0
execute if score $train.move bf matches 300 run playsound bf:entity.train.horn ambient @a 85.5 6.0 390.5 6 1
scoreboard players remove $train.move bf 1
execute if score $train.move bf matches ..0 run kill @e[tag=game.train]
execute at @n[tag=game.train.base] if score $train.onRail bf matches 0 run particle minecraft:trial_spawner_detection_ominous ~ ~5 ~2 0 0 0.5 0 1 force @a