#連続してボタン判定が発生しないようスコア設定
scoreboard players set $button.interval iv 1

#switch.runを0に
scoreboard players set $switch.run iv 0

#オンならdisplayを召喚する
execute if score $toggle iv matches 1 run function lobby:item_viewer/display/summon

#オンなら開く際の音再生
execute if score $toggle iv matches 1 as @a[distance=..5] at @s run playsound minecraft:entity.item.pickup ambient @s ~ ~ ~ 1 2 0.1

#オフならdisplayを削除する
execute if score $toggle iv matches 0 run kill @e[tag=iv]

#オフなら閉じる際の音再生
execute if score $toggle iv matches 0 as @a[distance=..5] at @s run playsound minecraft:entity.item.pickup ambient @s ~ ~ ~ 1 0.1 0.1