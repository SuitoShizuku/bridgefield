team join player.orange @r[team=entrant]
execute if score $max_teams bf matches 5 run return run function core:start/set_team_1
execute if entity @p[team=entrant] run function core:start/set_team_6