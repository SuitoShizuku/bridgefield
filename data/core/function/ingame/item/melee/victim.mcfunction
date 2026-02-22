tag @s add victim

function core:ingame/item/melee/weapon/ with entity @p[tag=attacker] SelectedItem.components."minecraft:custom_data"
item replace entity @p[tag=attacker] weapon.mainhand with air

tag @s remove victim
tag @p[tag=attacker] remove attacker