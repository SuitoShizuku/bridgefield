# チームを全員戻してから入れる
team join entrant @a[team=player.dead]
team join entrant @a[team=player.red]
team join entrant @a[team=player.blue]
team join entrant @a[team=player.green]
team join entrant @a[team=player.yellow]
team join entrant @a[team=player.cyan]
team join entrant @a[team=player.orange]
team join entrant @a[team=player.pink]
team join entrant @a[team=player.white]
team join player.red @a[tag=red,team=entrant]
team join player.blue @a[tag=blue,team=entrant]
team join player.yellow @a[tag=yellow,team=entrant]
team join player.green @a[tag=green,team=entrant]
team join player.orange @a[tag=orange,team=entrant]
team join player.pink @a[tag=pink,team=entrant]
team join player.cyan @a[tag=cyan,team=entrant]
team join player.white @a[tag=white,team=entrant]

# プレイヤー初期化
tp @a[tag=!tutorial.runner] 0 1 -13 0 0
clear @a[tag=!noInvClear]
effect clear @a
effect give @a resistance infinite 4 true
effect give @a saturation infinite 0 true
effect give @a instant_health infinite 0 true
effect give @a[team=spectator] invisibility infinite 0 true
effect give @a[team=spectator] glowing infinite 0 true
function lobby:settings/team/check