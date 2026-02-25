#burn remove
tag @s remove burn
#メッセージ
tellraw @s {"text":"火傷が治った！","color":"gold"}
#playsound
playsound minecraft:block.honey_block.slide player @s ~ ~ ~ 1 0.1 0.1