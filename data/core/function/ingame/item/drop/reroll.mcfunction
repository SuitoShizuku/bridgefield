#落としたアイテムをkill
execute positioned ~ ~1 ~ run kill @n[type=item,tag=dropItem]


#ルートgive
loot give @s loot core:root

#`
function core:ingame/turn/end
tag @s remove itemDropped