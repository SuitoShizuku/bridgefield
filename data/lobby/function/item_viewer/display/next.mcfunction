#連続してボタン判定が発生しないようスコア設定
scoreboard players set $button.interval.right iv 1

#上限なら色変える
execute if score $item.id iv = $item.id.max iv if score $button.interval.right iv matches 1 run data merge entity @n[type=text_display,tag=iv.text.next] {text:{"text":"Next",color:"red"}}

#上限ならサウンドを鳴らす、意味ないけどreturn 負荷が変わると願う
execute if score $item.id iv = $item.id.max iv run return run playsound block.note_block.bass ambient @a ~ ~ ~ 1 1 0.1 

#上限じゃないなら次のアイテムにする
execute unless score $item.id iv = $item.id.max iv run scoreboard players add $item.id iv 1

#idによるアイテムの表示を設定しなおす
function lobby:item_viewer/display/id_set