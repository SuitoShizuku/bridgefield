advancement revoke @s only core:bridge_place_s
tag @s add placed
execute as @n[type=interaction,tag=game.interact.bridge,tag=south,nbt={interaction:{}}] at @s positioned ~2 ~-5 ~1 run function core:bridge/place/ with entity @p[tag=placed] SelectedItem.components."minecraft:custom_data"