function core:initialize/bossbar
bossbar set minecraft:turn_timer_my players @s
execute at @p[tag=true_turn] run bossbar set minecraft:turn_timer_other players @a[tag=!true_turn,tag=!tutorial.runner]

attribute @s movement_speed modifier remove false_turn
attribute @s jump_strength modifier remove false_turn
attribute @s entity_interaction_range modifier remove false_turn
attribute @s block_interaction_range modifier remove false_turn

#プレイヤーごとの実行だけど@eでラウンドスタートで減少済みタグを消去
tag @e[type=minecraft:marker,tag=durability.damaged] remove durability.damaged
# ターン初めにデバフとかを処理
execute at @s run function core:ingame/effect/run_turn

#つけられてるタグによってどれだけターン時間が削られるか
execute store result score $temp bf run function core:ingame/turn/slowing/get

#tag remove 
function core:ingame/turn/slowing/tag_remove

#設定した値割る
scoreboard players operation $turn_time_count bf = $turn_time bf
scoreboard players operation $turn_time_count bf /= $temp bf

#もしstun Tagがあれば
function core:ingame/turn/stun/stun