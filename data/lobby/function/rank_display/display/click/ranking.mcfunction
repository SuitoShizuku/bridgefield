advancement revoke @s only lobby:rd/ranking
#textを表示,dialogでもよかった
function lobby:rank_display/display/click/text/ranking

execute as @a[tag=ranking] at @s run tag @s remove ranking
scoreboard players set $1 rank.ranking 0
execute as @r[tag=!ranking] run function lobby:rank_display/display/click/ranking/1
scoreboard players set $2 rank.ranking 0
execute as @r[tag=!ranking] run function lobby:rank_display/display/click/ranking/2
scoreboard players set $3 rank.ranking 0
execute as @r[tag=!ranking] run function lobby:rank_display/display/click/ranking/3
scoreboard players set $4 rank.ranking 0
execute as @r[tag=!ranking] run function lobby:rank_display/display/click/ranking/4
scoreboard players set $5 rank.ranking 0
execute as @r[tag=!ranking] run function lobby:rank_display/display/click/ranking/5