tag @s add tutorial.runner
function tutorial:gen
gamemode adventure @s
clear @s
attribute @s movement_speed modifier remove false_turn
attribute @s jump_strength modifier remove false_turn
attribute @s entity_interaction_range modifier remove false_turn
attribute @s block_interaction_range modifier remove false_turn
tag @s remove turn
tag @s remove true_turn
tp @s 0.5 15.00 -62.5 0 0