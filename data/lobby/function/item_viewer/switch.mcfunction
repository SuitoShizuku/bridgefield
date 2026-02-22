#オンならdisplayを召喚する
execute if score $toggle iv matches 1 run function lobby:item_viewer/display/summon

#オフならdisplayを削除する
execute if score $toggle iv matches 0 run function lobby:item_viewer/display/summon