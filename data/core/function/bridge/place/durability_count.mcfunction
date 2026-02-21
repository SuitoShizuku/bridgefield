$scoreboard players set $temp durability $(bridgeDurability)
$scoreboard players set $temp status.build $(bridgeCost)
# コストが足りなければ失敗関数を呼び出して切り返す
$execute unless score $temp status.build <= @p[tag=placed] status.build run return run function core:bridge/place/fail {cost:$(bridgeCost)}
# ティスプレイがなければ召喚
execute unless entity @n[tag=game.bridge.durability,distance=..1] run function core:bridge/place/durability_summon
# 値の演算
scoreboard players operation $temp status.build = @p[tag=placed] status.build
$scoreboard players remove @p[tag=placed] status.build $(bridgeCost)
execute as @n[tag=game.bridge.durability,distance=..1,type=marker] run scoreboard players operation @s durability > $temp durability
# 出力
execute as @p[tag=placed] run tellraw @s [{translate:"bf.bridge.durability.chat",fallback:"資源値: %1$s → %2$s",with:[{score:{name:"$temp",objective:"status.build"}},{score:{name:"@s",objective:"status.build"}}]}]
execute as @n[tag=game.bridge.durability,distance=..1,type=text_display] run data modify entity @s text set value [{translate:"bf.bridge.durability",fallback:"耐久値: %s",with:[{score:{name:"@n[tag=game.bridge.durability,type=marker]",objective:"durability"}}]}]