tag @s add ranking

execute if score $1 rank.ranking < @s rank run tag @a remove ranking.1
execute if score $1 rank.ranking < @s rank run tag @s add ranking.1
execute if score $1 rank.ranking < @s rank run scoreboard players operation $1 rank.ranking = @s rank

execute as @r[tag=!ranking] run function lobby:rank_display/display/click/ranking/1