advancement revoke @s only core:punch_victim
execute if score $now bf matches 1 run return 0
execute on attacker if entity @s[tag=true_turn] run return 0
execute on attacker run tag @s add punch.attacker
tag @s add punch.victim
execute if entity @p[tag=punch.attacker,predicate=core:check_hand] run function core:ingame/punch/damage
tag @a remove punch.attacker
tag @a remove punch.victim