scoreboard players remove @s armor_count 1
loot give @s loot core:root
execute unless score @s armor_count matches ..0 run function core:ingame/item/armor/armor_roll