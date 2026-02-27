scoreboard players add $initiative_root bf 1
scoreboard players operation @r[scores={initiative=0},team=!spectator,tag=!tutorial.runner] initiative = $initiative_root bf
execute if entity @p[scores={initiative=0},team=!spectator,tag=!tutorial.runner] run function core:start/set_initiative