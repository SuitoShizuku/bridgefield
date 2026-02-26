team join player.yellow @r[team=entrant]
execute if score $max_teams bf matches 3 run return run function core:start/set_team_1
execute if entity @p[team=entrant] run function core:start/set_team_4