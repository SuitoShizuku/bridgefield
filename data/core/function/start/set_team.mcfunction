function lobby:settings/team/check

team join player.red @a[tag=red,team=entrant]
team join player.blue @a[tag=blue,team=entrant]
team join player.yellow @a[tag=yellow,team=entrant]
team join player.green @a[tag=green,team=entrant]
team join player.orange @a[tag=orange,team=entrant]
team join player.pink @a[tag=pink,team=entrant]
team join player.cyan @a[tag=cyan,team=entrant]
team join player.white @a[tag=white,team=entrant]

# 赤チーム予約1人 ランダム1人 の場合2vs0でバグるため最低限回避
execute unless entity @p[team=player.red] run return run function core:start/set_team_1
execute unless entity @p[team=player.blue] run return run function core:start/set_team_2
function core:start/set_team_1