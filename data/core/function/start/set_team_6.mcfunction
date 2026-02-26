team join player.pink @r[team=entrant]
execute if score $max_teams bf matches 6 run return run function core:start/set_team_1
execute if entity @p[team=entrant] run function core:start/set_team_7