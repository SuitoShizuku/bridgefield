scoreboard players set @s leave 0
scoreboard players set @s initiative 0
execute if score $now bf matches 1 if entity @s[team=!spectator] run team join entrant @s
execute if score $now bf matches 2 if entity @s[team=!spectator] run team join player.dead @s
attribute @s movement_speed modifier remove false_turn
attribute @s jump_strength modifier remove false_turn
attribute @s entity_interaction_range modifier remove false_turn
attribute @s block_interaction_range modifier remove false_turn
clear @s
tag @s remove turn
tag @s remove true_turn