execute unless score @s armor_count matches 1.. run return 1
scoreboard players remove @s armor_count 1
loot give @s loot core:root
function core:ingame/item/armor/armor_roll