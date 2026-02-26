tag @s add victim

execute unless entity @p[tag=attacker,tag=true_turn] run return run function core:ingame/item/distant/other_turn
execute as @p[tag=attacker] unless predicate core:check_on_ground run return run function core:ingame/item/distant/false_on_ground

scoreboard players set $temp blindness 0
execute if items entity @p[tag=attacker] container.* *[custom_data~{"artifactId":"glow_ink_sac"}] unless score @s blindness matches 3.. run scoreboard players set $temp blindness 2
execute if items entity @p[tag=attacker] weapon.offhand *[custom_data~{"artifactId":"glow_ink_sac"}] unless score @s blindness matches 3.. run scoreboard players set $temp blindness 2
execute if score $temp blindness matches 1.. run function core:ingame/effect/debuff/blindness/add

function core:ingame/item/distant/weapon/ with entity @n[tag=projectile] item.components."minecraft:custom_data"
loot give @p[tag=attacker] loot core:root

execute as @p[tag=attacker] run function core:ingame/turn/end
tag @s remove victim
tag @p[tag=attacker] remove attacker
kill @n[tag=projectile]