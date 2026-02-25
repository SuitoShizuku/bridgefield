# 素手で左クリックしていても大丈夫なように、初期化
execute as @e[type=interaction,tag=game.interact.bridge,nbt={attack:{}}] run data remove entity @s attack

# ティスプレイがなければ
execute unless entity @n[tag=game.bridge.durability,distance=..1] run return run function core:bridge/damage/fail
tag @s add bridge.attacker

# 値の演算
$execute as @n[tag=game.bridge.durability,distance=..1,type=marker] run scoreboard players remove @s durability $(bridgeDamage)
# 出力
execute as @n[tag=game.bridge.durability,distance=..1,type=text_display] run data modify entity @s text set value [{translate:"bf.bridge.durability",fallback:"耐久値: %s",with:[{score:{name:"@n[tag=game.bridge.durability,type=marker]",objective:"durability"}}]}]
# アイテムを消してギブ
item replace entity @p[tag=bridge.attacker] weapon.mainhand with air
loot give @p[tag=bridge.attacker] loot core:root
# タグをリセットし、ターンを回す
execute if score $now bf matches 2 as @p[tag=bridge.attacker] run function core:ingame/turn/end
tag @a[tag=bridge.attacker] remove bridge.attacker
