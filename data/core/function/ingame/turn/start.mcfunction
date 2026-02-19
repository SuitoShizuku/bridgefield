scoreboard players operation $turn_time_count bf = $turn_time bf
bossbar set minecraft:turn_timer_my players @s
execute at @s run bossbar set minecraft:turn_timer_other players @a[distance=0.001..]

attribute @s movement_speed modifier remove false_turn
attribute @s jump_strength modifier remove false_turn