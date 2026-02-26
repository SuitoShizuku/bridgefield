#特殊効果
tag @s add frost_stun
#メッセージ表示
tellraw @p[tag=attacker] [{"text":"氷結ハンマーが使用された！","color":"aqua",bold:true}]
#氷結ハンマーの効果音
playsound minecraft:entity.wind_charge.wind_burst player @s ~ ~ ~ 1 2 0.1
playsound minecraft:entity.wind_charge.wind_burst player @p[tag=attacker] ~ ~ ~ 1 2 0.1

