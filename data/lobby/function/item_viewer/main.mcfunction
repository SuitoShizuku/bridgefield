#ロビーボタンが押されるとビューワー表示のon_off
execute unless score $button.interval iv matches 1.. if block -23 2 -5 #minecraft:buttons[powered=true] run function lobby:item_viewer/toggle
#オフオン時一回だけ実行されるfuncion
execute positioned -23 2 -5 if score $switch.run iv matches 1.. run function lobby:item_viewer/switch
#ロビーのボタンが元に戻るとインターバルがリセット
execute if block -23 2 -5 #minecraft:buttons[powered=false] run scoreboard players set $button.interval iv 0
#軽量化のためにivがオンのときだけ実行
execute if score $toggle iv matches 1 run function lobby:item_viewer/if_main
