# ラウンドエンドチェック
execute unless entity @a[tag=turn] run return run function core:ingame/round/start

# ターンを進めて、一致するプレイヤーを探す
scoreboard players add $now initiative 1
execute as @a[tag=turn] if score $now initiative = @s initiative run tag @s add true_turn
# もしそのターン値に一致しない場合、もう一度カウントして探す
execute unless entity @p[tag=true_turn] run return run function core:ingame/round/find_turn

# 一致したターン値のプレイヤーのプレイヤーのターンを開始
execute as @p[tag=true_turn] run function core:ingame/turn/start