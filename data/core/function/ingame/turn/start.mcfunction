scoreboard players operation $turn_time_count bf = $turn_time bf
bossbar set minecraft:turn_timer_my players @s
execute at @p[tag=true_turn] run bossbar set minecraft:turn_timer_other players @a[distance=0.001..]

attribute @s movement_speed modifier remove false_turn
attribute @s jump_strength modifier remove false_turn
attribute @s entity_interaction_range modifier remove false_turn
attribute @s block_interaction_range modifier remove false_turn

#プレイヤーごとの実行だけど@eでラウンドスタートで減少済みタグを消去
tag @e[type=minecraft:marker,tag=durability.damaged] remove durability.damage