#item_display召喚
summon minecraft:item_display -23 0 -6 {Tags:["iv","iv.item","lobby","up"],teleport_duration:5,transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.5f,0.5f,0.5f]}}

#text_display召喚
summon minecraft:text_display -23 0.5 -5.9 {Tags:["iv","iv.text","lobby","up"],teleport_duration:5}
summon minecraft:text_display -23 0.25 -5.5 {Tags:["iv","iv.text.id","lobby","up"],teleport_duration:5}
summon minecraft:text_display -23 0.8 -6 {Tags:["iv","iv.text.click_here","lobby","up"],teleport_duration:5,text:{"text":"アイテムを右クリックして詳細確認！",color:"gray"},transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.5f,0.5f,0.5f]}}
summon minecraft:text_display -22 -0 -6 {Tags:["iv","iv.text.next","lobby","up"],teleport_duration:10,text:{"text":"Next"},Rotation:[20f,0f]}
summon minecraft:text_display -23.5 -0 -6 {Tags:["iv","iv.text.back","lobby","up"],teleport_duration:10,text:{"text":"Back"},Rotation:[-20f,0f]}

#item_display召喚
summon minecraft:item_display -23.2 6.7 -5.5 {Tags:["iv","down","iv.item.grow"],teleport_duration:5,transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.5f,0.5f,0.5f]},item:{id:"minecraft:end_rod"},Rotation:[-45f,0f]}
summon minecraft:item_display -21.8 6.2 -5.5 {Tags:["iv","down","iv.item.grow"],teleport_duration:5,transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.3f,0.3f,0.3f]},item:{id:"minecraft:end_rod"},Rotation:[-65f,0f]}
summon minecraft:item_display -21.8 6.8 -5.5 {Tags:["iv","down","iv.item.grow"],teleport_duration:5,transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.3f,0.3f,0.3f]},item:{id:"minecraft:end_rod"},Rotation:[-65f,0f]}
summon minecraft:item_display -21.8 6.5 -5.5 {Tags:["iv","down","iv.item.grow"],teleport_duration:5,transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.3f,0.3f,0.3f]},item:{id:"minecraft:end_rod"},Rotation:[-65f,0f]}
summon minecraft:item_display -23.2 6.2 -5.5 {Tags:["iv","down","iv.item.grow"],teleport_duration:5,transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.5f,0.5f,0.5f]},item:{id:"minecraft:ochre_froglight"},Rotation:[-45f,0f]}
summon minecraft:item_display -21.8 5.9 -5.5 {Tags:["iv","down","iv.item.grow"],teleport_duration:5,transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.3f,0.3f,0.3f]},item:{id:"minecraft:ochre_froglight"},Rotation:[-65f,0f]}
summon minecraft:item_display -23.5 1.5 -4.5 {Tags:["iv","up.1","iv.item.button.left"],teleport_duration:10,transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1f,1,1f]},item:{id:"minecraft:crimson_button"},Rotation:[0f,0f]}
summon minecraft:item_display -21.5 1.5 -4.5 {Tags:["iv","up.1","iv.item.button.right"],teleport_duration:10,transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1f,1,1f]},item:{id:"minecraft:warped_button"},Rotation:[0f,0f]}

schedule function lobby:item_viewer/display/set_button 10t
#interaction召喚
summon interaction -23 -0.5 -6 {Tags:["iv","iv.interaction",up]}

summon interaction -21.5 2.0 -4.5 {Tags:["iv","iv.interaction.right"],height:0.2f,width:0.4f}

summon interaction -23.5 2.0 -4.5 {Tags:["iv","iv.interaction.left"],height:0.2f,width:0.4f}
#ディスプレイが下からニョッキってなるやつ
execute as @e[tag=iv,tag=up] at @s run tp ~ ~2.5 ~ 
execute as @e[tag=iv,tag=up.1] at @s run tp ~ ~0.5 ~ 
execute as @e[tag=iv,tag=down] at @s run tp ~ ~-2 ~ 

#itemのidを初期化
execute unless score $item.id iv matches 0.. run scoreboard players set $item.id iv 1

#item_idから表示させるアイテムの設定
function lobby:item_viewer/display/id_set