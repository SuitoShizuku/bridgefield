# ラウンドエンドチェック
execute unless entity @a[tag=turn] run return run function core:ingame/round/start

# ターンを進めて、一致するプレイヤーを探す
scoreboard players add $now initiative 1
execute as @a[tag=turn] if score $now initiative = @s initiative run tag @s add true_turn
# もしそのターン値に一致しない場合、もう一度カウントして探す
execute unless entity @p[tag=true_turn] run return run function core:ingame/round/find_turn

# 一致したターン値のプレイヤーのプレイヤーのターンを開始
execute as @p[tag=true_turn] run function core:ingame/turn/start

execute as @p[tag=true_turn] at @s run playsound block.note_block.flute master @s ~ ~ ~ 1 1.8 1
execute as @a[tag=!true_turn,team=!spectator,tag=!tutorial.runner] at @s run playsound block.note_block.flute master @s ~ ~ ~ 1 0.8 1

#爆発デコイのカウントを1増やす
scoreboard players add @e[type=villager,tag=ed] ed 1

#純金リンゴの回復
scoreboard players add @a[scores={pure_gold_apple=1..}] status.hp 2

#純金リンゴの使用音
execute as @a[scores={pure_gold_apple=1..}] at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 2 0.1

#純金リンゴのカウントを1減らす
scoreboard players remove @a[scores={pure_gold_apple=1..}] pure_gold_apple 1

#
