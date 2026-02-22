#switch.runを0に
scoreboard players set $switch.run iv 0
#オンならdisplayを召喚する
execute if score $toggle iv matches 1 run function lobby:item_viewer/display/summon

#オフならdisplayを削除する
execute if score $toggle iv matches 0 run kill @e[tag=iv]
say a