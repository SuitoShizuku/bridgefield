execute as @a unless score @s bgm_id matches 0.. run scoreboard players set @s bgm_id 1
execute as @a[tag=music] at @s run function core:ingame/music/loop/