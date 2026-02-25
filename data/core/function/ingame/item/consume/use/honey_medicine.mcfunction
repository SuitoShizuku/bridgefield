#メッセージ
tellraw @s[tag=burn] {"text":"火傷が治った！","color":"gold"}

tellraw @s[tag=!burn] {"text":"火傷はないけど健康になった気分！","color":"gold"}

#playsound
playsound minecraft:block.honey_block.slide player @s ~ ~ ~ 1 0.1 0.1

#burn remove
tag @s remove burn