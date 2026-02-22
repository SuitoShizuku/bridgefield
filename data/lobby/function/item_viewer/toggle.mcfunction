#0なら1,1なら0にスコア設定
execute if score $toggle iv matches 1 run return run scoreboard players set $toggle iv 0
scoreboard players set $toggle iv 1