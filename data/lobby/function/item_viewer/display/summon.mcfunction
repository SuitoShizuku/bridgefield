#text_display召喚
summon minecraft:item_display -23 3 -6 {Tags:["iv","iv.item"],teleport_duration:1,height:0.5f,width:0.5f}

#itemのidを初期化
execute unless score $item.id iv matches 0.. run scoreboard players set $item.id iv 1

#item_idから表示させるアイテムの設定
function lobby:item_viewer/display/item_display/id_set