tag @s remove tutorial.runner
execute unless entity @p[tag=tutorial.runner] run kill @e[tag=tutorial]
team join entrant @s
execute if score $now bf matches 1 run return 1
team join player.dead @s
tp @s @p[tag=true_turn]