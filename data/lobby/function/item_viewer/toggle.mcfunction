#score switch.runを1に(mainで実行すると常時実行でこのファイルの最後に書くとreturnされるためスコアで制御するこの形に)
scoreboard players set $switch.run iv 1

#0なら1,1なら0にスコア設定
execute if score $toggle iv matches 1 run return run scoreboard players set $toggle iv 0
scoreboard players set $toggle iv 1
say a