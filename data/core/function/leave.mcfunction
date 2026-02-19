scoreboard players set @s leave 0
scoreboard players set @s initiative 0
execute if score $now bf matches 1 if entity @s[team=!spectator] run team join entrant @s
execute if score $now bf matches 2 if entity @s[team=!spectator] run team join player.dead @s
clear @s
tag @s remove turn
tag @s remove true_turn