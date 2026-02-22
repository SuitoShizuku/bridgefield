#ロビーボタンが押されるとビューワー表示のon_off
execute unless score $button.interval iv matches 1.. if block -23 2 -5 minecraft:stone_button[powered=true] run function lobby:item_viewer/toggle

#switch実行
function lobby:item_viewer/switch

#ロビーのボタンが元に戻るとインターバルがリセット
execute if block -23 2 -5 minecraft:stone_button[powered=false] run scoreboard players set $button.interval iv 0
