#item_display召喚
summon minecraft:item_display -23 1 -6 {Tags:["iv","iv.item"],teleport_duration:5,transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.5f,0.5f,0.5f]}}

#text_display召喚
summon minecraft:text_display -23 3 -6 {Tags:["iv","iv.text","iv.text.display"],teleport_duration:5}
summon minecraft:text_display -22 0.8 -6 {Tags:["iv","iv.text.next","iv.text.display"],teleport_duration:10,text:{"text":"Next"},Rotation:[20f,0f]}
summon minecraft:text_display -23.5 0.8 -6 {Tags:["iv","iv.text.back","iv.text.display"],teleport_duration:10,text:{"text":"Back"},Rotation:[-20f,0f]}

#interaction召喚
summon interaction -23 2 -6 {Tags:["iv","iv.interaction"]}
#ディスプレイが下からニョッキってなるやつ
execute as @e[tag=iv,tag=!iv.text] at @s run tp ~ ~1.5 ~ 

#itemのidを初期化
execute unless score $item.id iv matches 0.. run scoreboard players set $item.id iv 1

#item_idから表示させるアイテムの設定
function lobby:item_viewer/display/id_set