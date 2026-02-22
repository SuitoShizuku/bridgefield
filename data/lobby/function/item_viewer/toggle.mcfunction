#連続してボタン判定が発生しないようスコア設定
scoreboard players set $button_interval iv 1

#切り替わった際のfunctionを実行
function lobby:item_viewer/switch

#0なら1,1なら0にスコア設定
execute if score $toggle iv matches 1 run scoreboard players set $toggle iv 0
#return時のfunction
execute if score $toggle iv matches 1 run return run function lobby:item_viewer/switch
scoreboard players set $toggle iv 1

#Noreturn時のfunction
function lobby:item_viewer/switch