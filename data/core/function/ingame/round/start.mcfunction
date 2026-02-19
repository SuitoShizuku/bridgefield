execute store result bossbar turn_timer_team max run scoreboard players get $turn_time bf
execute store result bossbar turn_timer_othor max run scoreboard players get $turn_time bf

tag @a remove true_turn
tag @a remove turn
tag @a[team=player.red] add turn
tag @a[team=player.blue] add turn
tag @a[team=player.yellow] add turn
tag @a[team=player.green] add turn
tag @a[team=player.orange] add turn
tag @a[team=player.pink] add turn
tag @a[team=player.cyan] add turn
tag @a[team=player.white] add turn
scoreboard players set $now initiative 0

execute as @a[tag=turn] run attribute @s movement_speed modifier add false_turn -1 add_multiplied_total
execute as @a[tag=turn] run attribute @s jump_strength modifier add false_turn -1 add_multiplied_total

function core:ingame/round/find_turn