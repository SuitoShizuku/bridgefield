tag @s add victim

function core:ingame/item/melee/weapon/ with entity @p[tag=attacker] SelectedItem.components."minecraft:custom_data"
item replace entity @p[tag=attacker] weapon.mainhand with air
loot give @p[tag=attacker] loot core:root
execute as @p[tag=attacker] run function core:ingame/turn/end

tag @s remove victim
tag @p[tag=attacker] remove attacker