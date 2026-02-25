
#メッセージ
tellraw @s[tag=frostbite] {"text":"凍傷が治った！","color":"aqua"}

#メッセージ
tellraw @s[tag=!frostbite] {"text":"凍傷が無いのでねちょねちょしてだた気持ち悪い！","color":"aqua"}
#playsound
playsound minecraft:block.slime_block.place player @s ~ ~ ~ 1 0.1 0.1

#burn remove
tag @s remove frostbite