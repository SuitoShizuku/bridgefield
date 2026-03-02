#特殊効果
tag @s add stun
#メッセージ表示
tellraw @p[tag=attacker] [{"text":"万科事典が使用された！","color":"gold"}]
#  スタンハンマーの効果音
playsound minecraft:block.anvil.place player @s ~ ~ ~ 1 2 0.1
playsound minecraft:block.anvil.place player @p[tag=attacker] ~ ~ ~ 1 2 0.1