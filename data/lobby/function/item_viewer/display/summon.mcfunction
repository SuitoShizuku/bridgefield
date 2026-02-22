#item_display召喚
summon minecraft:item_display -23 1 -6 {Tags:["iv","iv.item"],teleport_duration:5,transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.5f,0.5f,0.5f]}}
execute as @e[tag=iv] at @s run tp ~ ~1.5 ~ 

#text_display召喚
summon minecraft:text_display -23 3 -6 {Tags:["iv","iv.text"],teleport_duration:5}
summon minecraft:text_display -22 2.5 -6 {Tags:["iv","iv.text.next"],teleport_duration:5,text:{"text":"Next"}}
summon minecraft:text_display -23.5 2.5 -6 {Tags:["iv","iv.text.back"],teleport_duration:5,text:{"text":"Back"}}

#itemのidを初期化
execute unless score $item.id iv matches 0.. run scoreboard players set $item.id iv 1

#item_idから表示させるアイテムの設定
function lobby:item_viewer/display/id_set