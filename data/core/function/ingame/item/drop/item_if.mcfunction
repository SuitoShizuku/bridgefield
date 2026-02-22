# アイテムを投げたプレイヤーにタグ
$tag @p[nbt={UUID:$(Thrower)}] add itemDropped
# 試合中で投げたプレイヤーのターンならリロール
execute if score $now bf matches 2 if entity @p[tag=itemDropped,tag=true_turn] run return run function core:ingame/item/drop/reroll
# でなければすぐ拾う
$data merge entity @s {Owner:$(Thrower),PickupDelay:0}