#特殊効果
tag @s add slowing_wooden

#メッセージ
tellraw @s {"text":"スロー効果を喰らってしまった！","color":"aqua",bold:true}

tellraw @p[tag=attacker] {"text":"相手にスロー効果を付与した！","color":"aqua",bold:true}
#スロー効果の音
playsound minecraft:block.bubble_column.whirlpool_inside player @s ~ ~ ~ 1 1 0.1