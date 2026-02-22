#落としたアイテムをkill
execute positioned ~ ~1 ~ run kill @n[type=item,distance=..0.3]

#ルートgive
loot give @s loot core:root
