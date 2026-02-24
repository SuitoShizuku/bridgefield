#item_display召喚
summon minecraft:item_display -23 0 -6 {Tags:["iv","iv.item","lobby","up"],teleport_duration:5,transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.5f,0.5f,0.5f]}}

#text_display召喚
summon minecraft:text_display -23 0.5 -6 {Tags:["iv","iv.text","lobby","up"],teleport_duration:5}
summon minecraft:text_display -23 0.8 -6 {Tags:["iv","iv.text.click_here","lobby","up"],teleport_duration:5,text:{"text":"アイテムを右クリックして詳細確認！",color:"gray"},transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.5f,0.5f,0.5f]}}
summon minecraft:text_display -22 -0 -6 {Tags:["iv","iv.text.next","lobby","up"],teleport_duration:10,text:{"text":"Next"},Rotation:[20f,0f]}
summon minecraft:text_display -23.5 -0 -6 {Tags:["iv","iv.text.back","lobby","up"],teleport_duration:10,text:{"text":"Back"},Rotation:[-20f,0f]}

#block_display召喚
summon minecraft:block_display -23.0 6 -5.5 {Tags:["iv","down"],teleport_duration:5,transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.5f,0.5f,0.5f],translation:[-0.5f,-0.5f,-0.5f]},block_state:{Name:"minecraft:ochre_froglight"},Rotation:[-45f,0f]}
summon minecraft:block_display -22.0 5.7 -5.5 {Tags:["iv","down"],teleport_duration:5,transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.3f,0.3f,0.3f],translation:[-0.5f,-0.5f,-0.5f]},block_state:{Name:"minecraft:ochre_froglight"},Rotation:[-65f,0f]}
#interaction召喚
summon interaction -23 -0.5 -6 {Tags:["iv","iv.interaction",up]}
#ディスプレイが下からニョッキってなるやつ
execute as @e[tag=iv,tag=up] at @s run tp ~ ~2.5 ~ 
execute as @e[tag=iv,tag=down] at @s run tp ~ ~-2 ~ 

#itemのidを初期化
execute unless score $item.id iv matches 0.. run scoreboard players set $item.id iv 1

#item_idから表示させるアイテムの設定
function lobby:item_viewer/display/id_set