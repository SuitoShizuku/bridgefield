#デコイのカウントが一致すると爆発
execute as @e[type=minecraft:villager,tag=ed] at @s if score @s ed = @s ed_random run function core:ingame/item/explode_decoy/explode