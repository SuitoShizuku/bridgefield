scoreboard players operation $turn_time_count bf = turn_time bf
bossbar set minecraft:turn_timer_my players @s
bossbar set minecraft:turn_timer_othor players @a[distance=0.001..]

attribute @s movement_speed modifier remove false_turn
attribute @s jump_strength modifier remove false_turn