tag @s add victim

execute if entity @p[tag=attacker,tag=true_turn] run return run function core:ingame/item/distant/other_turn

function core:ingame/item/distant/weapon/ with entity @n[tag=projectile] item.components."minecraft:custom_data"
loot give @p[tag=attacker] loot core:root
execute as @p[tag=attacker] run function core:ingame/turn/end

tag @s remove victim
tag @p[tag=attacker] remove attacker
kill @n[tag=projectile]