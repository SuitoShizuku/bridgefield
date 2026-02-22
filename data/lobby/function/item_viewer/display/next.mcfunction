#上限ならサウンドを鳴らす
execute if score $item.id iv = $item.id.max iv run playsound block.note_block.bass ambient @a ~ ~ ~ 1 1 0.1 

#上限じゃないなら次のアイテムにする
execute unless score $item.id iv = $item.id.max iv run scoreboard players add $item.id iv 1

#idによるアイテムの表示を設定しなおす
function lobby:item_viewer/display/id_set