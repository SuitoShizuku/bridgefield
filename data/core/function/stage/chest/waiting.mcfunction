scoreboard players remove @e[tag=game.treasure.waiting] bf 1
execute at @e[tag=game.treasure.waiting,scores={bf=..0}] run function core:stage/chest/
kill @e[tag=game.treasure.waiting,scores={bf=..0}]