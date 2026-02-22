#ロビーボタンが押されるとビューワー表示のon_off
execute unless score $button_interval iv matches 1.. if block -23 2 -5 minecraft:stone_button[powered=true] run function lobby:item_viewer/toggle

#ロビーのボタンが元に戻るとインターバルがリセット
execute if block -23 2 -5 minecraft:stone_button[powered=false] run scoreboard players set $button_interval iv 0

