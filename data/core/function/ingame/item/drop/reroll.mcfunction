#落としたアイテムをkill
execute positioned ~ ~1 ~ run kill @n[type=item,tag=dropItem]


#ルートgive
loot give @s loot core:root

#ターンの終了
function core:ingame/turn/end

#タグ削除
tag @s remove itemDropped