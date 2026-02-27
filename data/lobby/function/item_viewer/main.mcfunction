#ロビーボタンが押されるとビューワー表示のon_off
execute unless score $button.interval iv matches 1.. if block -23 2 -5 #minecraft:buttons[powered=true] run function lobby:item_viewer/toggle
#軽量化のためにivがオンのときだけ実行
execute if score $toggle iv matches 1 run function lobby:item_viewer/if_main