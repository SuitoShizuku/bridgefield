#連続してボタン判定が発生しないようスコア設定
scoreboard players set $button_interval iv 1

#0なら1,1なら0にスコア設定
execute if score $toggle iv matches 1 run return run scoreboard players set $toggle iv 0
scoreboard players set $toggle iv 1

#切り替わった際のfunctionを実行
execute if score $toggle iv matches 1 run function lobby:item_viewer/switch