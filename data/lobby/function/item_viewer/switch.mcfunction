#連続してボタン判定が発生しないようスコア設定
scoreboard players set $button.interval iv 1

#switch.runを0に
scoreboard players set $switch.run iv 0

#オンならdisplayを召喚する
execute if score $toggle iv matches 1 run function lobby:item_viewer/display/summon

#オンなら開く際の音再生
execute if score $toggle iv matches 1 run playsound minecraft:entity.item.pickup ambient @a ~ ~ ~ 1 2 0.1

#オフならdisplayを削除する
execute if score $toggle iv matches 0 run kill @e[tag=iv]

#オフなら閉じる際の音再生
execute if score $toggle iv matches 0 run playsound minecraft:entity.item.pickup ambient @a ~ ~ ~ 1 0.1 0.1

#閉じるときも開くときもパーティクルは召喚
particle minecraft:white_smoke ~ ~ ~-1 0 0 0 0.1 100 normal @a