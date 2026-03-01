advancement revoke @s only core:punch_victim
execute if score $now bf matches 1 run return 0
execute on attacker unless entity @s[tag=true_turn] run return 0
execute on attacker run tag @s add punch.attacker
tag @s add punch.victim

scoreboard players set $temp blindness 0
execute if items entity @p[tag=punch.attacker] container.* *[custom_data~{"artifactId":"glow_ikatta"}] unless score @s blindness matches 3.. run scoreboard players set $temp blindness 2
execute if items entity @p[tag=punch.attacker] weapon.offhand *[custom_data~{"artifactId":"glow_ikatta"}] unless score @s blindness matches 3.. run scoreboard players set $temp blindness 2
execute if score $temp blindness matches 1.. run function core:ingame/effect/debuff/blindness/add

execute if entity @p[tag=punch.attacker,predicate=core:check_hand] run function core:ingame/punch/damage
tag @a remove punch.attacker
tag @a remove punch.victim