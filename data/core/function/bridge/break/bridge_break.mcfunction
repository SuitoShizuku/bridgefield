#橋のブロックを削除
fill ~-2 ~-8 ~-2 ~2 ~7 ~2 air destroy

#音再生
playsound minecraft:entity.zombie.break_wooden_door block @a ~ ~ ~ 1 1 0.1

#本体，自身をキル
kill @s
#テキストディスプレイキル
kill @n[type=text_display,distance=..0.1,tag=game.bridge.durability]