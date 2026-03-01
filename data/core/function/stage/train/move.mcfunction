execute as @n[tag=game.train.base] at @s run tp @s ~ ~ ~-0.5 0.0 0.0
execute if score $train.move bf matches 300 run playsound bf:entity.train.horn ambient @a 85.5 6.0 390.5 6 1
scoreboard players remove $train.move bf 1
execute if score $train.move bf matches ..0 run kill @e[tag=game.train]
execute at @n[tag=game.train.base] run particle minecraft:trial_spawner_detection_ominous ~ ~5 ~2 0 0 0.5 0 1 force @a