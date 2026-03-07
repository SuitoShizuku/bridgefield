tag @s add ranking

execute if score $2 rank.ranking < @s rank.ranking run tag @a remove ranking.2
execute if score $2 rank.ranking < @s rank.ranking run tag @s add ranking.2
execute if score $2 rank.ranking < @s rank.ranking run scoreboard players operation $2 rank.ranking = @s rank.ranking

execute as @r[tag=!ranking] run function lobby:rank_display/display/click/ranking/2