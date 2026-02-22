#ロビーボタンが押されるとビューワー表示のon_off
execute unless score $button_interval iv matches 1.. if block -23 2 -5 minecraft:stone_button[powered=true] run function lobby:item_viewer/toggle

#ロビーボタンが押されるとファンクション実行条件スコア達成
execute if block -23 2 -5 minecraft:stone_button[powered=true] run scoreboard players set $switch.run iv 1

#switch.runが1以上ならswitch実行
execute if score $switch.run iv matches 1.. run function lobby:item_viewer/switch

#ロビーのボタンが元に戻るとインターバルがリセット
execute if block -23 2 -5 minecraft:stone_button[powered=false] run scoreboard players set $button_interval iv 0

