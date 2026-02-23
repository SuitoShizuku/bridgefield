tag @s remove tutorial.runner
team join entrant @s
execute if score $now bf matches 1 run return 1
team join player.dead @s
tp @s @p[tag=true_turn]