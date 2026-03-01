execute as @n[tag=game.train.base] at @s run tp @s ~ ~ ~-0.5 0.0 0.0
scoreboard players remove $train.move bf 1
execute if score $train.move bf matches ..0 run kill @e[tag=game.train]