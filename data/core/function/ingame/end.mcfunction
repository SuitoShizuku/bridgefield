team join entrant @a[team=player.dead]
team join entrant @a[team=player.red]
team join entrant @a[team=player.blue]
team join entrant @a[team=player.green]
team join entrant @a[team=player.yellow]
team join entrant @a[team=player.cyan]
team join entrant @a[team=player.orange]
team join entrant @a[team=player.pink]
team join entrant @a[team=player.white]
scoreboard players set $now bf 1

tp @a[team=entrant] 0 1 -13 0 0
tp @a[team=spectator] 0 1 -13 0 0

execute as @a run attribute @s movement_speed modifier remove false_turn
execute as @a run attribute @s jump_strength modifier remove false_turn

bossbar set turn_timer_my visible false
bossbar set turn_timer_other visible false

effect clear @a
effect give @a resistance infinite 4 true
effect give @a saturation infinite 0 true
effect give @a instant_health infinite 0 true
effect give @a[team=spectator] invisibility infinite 0 true
effect give @a[team=spectator] glowing infinite 0 true