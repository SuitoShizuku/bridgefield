#連続してボタン判定が発生しないようスコア設定
scoreboard players set $button.interval iv 1

#switch.runを0に
scoreboard players set $switch.run iv 0

#オンならdisplayを召喚する
execute if score $toggle iv matches 1 run function lobby:item_viewer/display/summon

#オンなら開く際の音再生
execute if score $toggle iv matches 1 run playsound minecraft:entity.item.pickup ambient @a ~ ~ ~ 1 2 0.1

#オンなら明かり付ける
execute if score $toggle iv matches 1 run fill -22 5 -6 -24 5 -6 minecraft:ochre_froglight

#開くときパーティクル召喚
execute if score $toggle iv matches 1 run particle minecraft:white_smoke ~ ~ ~-1 0 0 0 0.1 100 normal @a

#オフならdisplayを削除する
execute if score $toggle iv matches 0 run kill @e[tag=iv]

#連打時スケジュールが残るのでschedule clear
schedule clear lobby:item_viewer/display/set_button

#オフなら閉じる際の音再生
execute if score $toggle iv matches 0 run playsound minecraft:entity.item.pickup ambient @a ~ ~ ~ 1 0.1 0.1

#オフなら明かり消す
execute if score $toggle iv matches 0 run fill -22 5 -6 -24 5 -6 minecraft:redstone_lamp

#閉じるときパーティクル召喚
execute if score $toggle iv matches 0 run particle minecraft:smoke ~ ~ ~-1 0 0 0 0.1 100 normal @a

#buttonを消す
setblock -24 2 -5 minecraft:air
setblock -22 2 -5 minecraft:air