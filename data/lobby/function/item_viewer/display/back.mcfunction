#連続してボタン判定が発生しないようスコア設定
scoreboard players set $button.interval.left iv 1

#上限なら色変える
execute if score $item.id iv matches 1 if score $button.interval.left iv matches 1 run data merge entity @n[type=text_display,tag=iv.text.back] {text:{"text":"Back",color:"red"}}

#下限ならサウンドを鳴らす
execute if score $item.id iv matches 1 run return run playsound block.note_block.bass ambient @a ~ ~ ~ 1 1 0.1 

#下限じゃないなら前のアイテムにする
execute unless score $item.id iv matches 1 run scoreboard players remove $item.id iv 1

#色変える
execute if score $button.interval.left iv matches 1 run data merge entity @n[type=text_display,tag=iv.text.back] {text:{"text":"Back",color:"green"}}

#idによるアイテムの表示を設定しなおす
function lobby:item_viewer/display/id_set