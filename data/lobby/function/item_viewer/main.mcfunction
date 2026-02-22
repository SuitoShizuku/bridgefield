#ロビーボタンが押されるとビューワー表示のon_off
execute unless score $button.interval iv matches 1.. if block -23 2 -5 minecraft:stone_button[powered=true] run function lobby:item_viewer/toggle

#ロビーボタンが押されるとswitch実行条件スコアを1に
execute if block -23 2 -5 minecraft:stone_button[powered=true] run scoreboard players set $switch.run iv 1

#ロビーのボタンが元に戻るとインターバルがリセット
execute if block -23 2 -5 minecraft:stone_button[powered=false] run scoreboard players set $button.interval iv 0

#switch.runが1以上ならswitch実行
execute unless score $button.interval iv matches 1.. if score $switch.run iv matches 1.. run function lobby:item_viewer/switch