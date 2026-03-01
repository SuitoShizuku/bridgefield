tag @s add victim

scoreboard players set $temp blindness 0
execute if items entity @p[tag=attacker] container.* *[custom_data~{"artifactId":"glow_ikatta"}] unless score @s blindness matches 3.. run scoreboard players set $temp blindness 2
execute if items entity @p[tag=attacker] weapon.offhand *[custom_data~{"artifactId":"glow_ikatta"}] unless score @s blindness matches 3.. run scoreboard players set $temp blindness 2
execute if score $temp blindness matches 1.. run function core:ingame/effect/debuff/blindness/add

function core:ingame/item/melee/weapon/ with entity @p[tag=attacker] SelectedItem.components."minecraft:custom_data"
loot give @p[tag=attacker] loot core:root
item replace entity @p[tag=attacker] weapon.mainhand with air

execute as @p[tag=attacker] run function core:ingame/turn/end
tag @s remove victim
tag @p[tag=attacker] remove attacker