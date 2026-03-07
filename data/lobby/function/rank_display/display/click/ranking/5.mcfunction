tag @s add ranking

execute if score $5 rank.ranking < @s rank.ranking run scoreboard players operation $5 rank.ranking = @s rank.ranking

execute as @r[tag=!ranking] run function lobby:rank_display/display/click/ranking/5