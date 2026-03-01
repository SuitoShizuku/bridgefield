execute as @n[tag=game.train.base] at @s run tp @s ~ ~ ~-0.5 0.0 0.0
execute if score $train.move bf matches 200 run playsound bf:entity.train.horn master @a 85.5 6.0 342.5 1 1
scoreboard players remove $train.move bf 1
execute if score $train.move bf matches ..0 run kill @e[tag=game.train]
execute at @n[tag=game.train.base] run particle minecraft:trial_spawner_detection_ominous ~ ~5 ~2 0 0 0.5 0 1 force @a