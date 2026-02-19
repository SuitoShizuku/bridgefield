gamemode spectator @a[team=spectator]
gamemode spectator @a[team=player.dead]
gamemode adventure @a[team=!spectator,team=!player.dead]

execute unless entity @a[tag=true_turn] run function core:ingame/round/find_turn

scoreboard players remove $turn_time_count bf 1
execute store result bossbar turn_timer_my value run scoreboard players get $turn_time_count bf
execute store result bossbar turn_timer_other value run scoreboard players get $turn_time_count bf
execute if score $turn_time_count bf matches ..-1 as @p[tag=true_turn] run function core:ingame/turn/end