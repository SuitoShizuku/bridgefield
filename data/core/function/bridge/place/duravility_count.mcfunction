$scoreboard players set $temp duravility $(bridgeDuravility)
$scoreboard players set $temp status.build $(bridgeCost)
# コストが足りなければ0を返す
execute unless score $temp status.build <= @p[tag=placed] status.build run return run function core:bridge/place/fail
# ティスプレイがなければ召喚
execute unless entity @n[tag=game.bridge.duravility,distance=..1] run function core:bridge/place/duravility_summon
# 値の演算
scoreboard players operation $temp status.build = @p[tag=placed] status.build
execute as @n[tag=game.bridge.duravility,distance=..1,type=marker] if score @s duravility <= $temp duravility run scoreboard players operation @s duravility = $temp duravility
# 出力
execute as @n[tag=game.bridge.duravility,distance=..1,type=marker] run tellraw @p[tag=placed] [{translate:"bf.bridge.duravility.chat",fallback:"資源値: %1$s → %2$s",with:[{score:{name:"$temp",objective:"status.build"}},{score:{name:"@p[tag=placed]",objective:"status.build"}}]}]
execute as @n[tag=game.bridge.duravility,distance=..1,type=marker] run data modify entity @s text set value [{translate:"bf.bridge.duravility",fallback:"耐久値: %s",with:[{score:{name:"@s",objective:"duravility"}}]}]