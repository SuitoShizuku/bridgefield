advancement revoke @s only core:bridge_place_n
tag @s add placed
execute as @n[type=interaction,tag=game.interact.bridge,tag=east,nbt={interaction:{}}] at @s positioned ~ ~4 ~-3 run function core:bridge/place/duravility_count with entity @p[tag=placed] SelectedItem.components."minecraft:custom_data"
execute if entity @s[tag=placed] as @n[type=interaction,tag=game.interact.bridge,tag=north,nbt={interaction:{}}] at @s positioned ~-2 ~-5 ~-1 run function core:bridge/place/ with entity @p[tag=placed] SelectedItem.components."minecraft:custom_data"