execute if entity @s[gamemode=spectator] run return 0
tag @s add blindness
effect give @s blindness infinite 0 true
scoreboard players operation @s blindness = $temp blindness