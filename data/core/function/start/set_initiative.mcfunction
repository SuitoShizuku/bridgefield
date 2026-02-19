scoreboard players add $initiative_root bf 1
scoreboard players operation @r[scores={initiative=0},team=entrant] initiative = $initiative_root bf
execute if entity @p[scores={initiative=0},team=entrant] run function core:start/set_initiative