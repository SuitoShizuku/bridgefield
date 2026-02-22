#下限ならサウンドを鳴らす
execute if score $item.id iv matches 1 run playsound block.note_block.bass ambient @a ~ ~ ~ 1 1 0.1 

#下限じゃないなら前のアイテムにする
execute unless score $item.id iv matches 1 run scoreboard players remove $item.id iv 1

#idによるアイテムの表示を設定しなおす
function lobby:item_viewer/display/id_set