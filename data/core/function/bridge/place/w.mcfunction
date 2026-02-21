advancement revoke @s only core:bridge_place_w
tag @s add placed
execute at @n[type=interaction,tag=game.interact.bridge,tag=east,nbt={interaction:{}}] positioned ~-3 ~4 ~ run function core:bridge/place/duravility_count with entity @s SelectedItem.components."minecraft:custom_data"
execute if entity @s[tag=placed] as @n[type=interaction,tag=game.interact.bridge,tag=west,nbt={interaction:{}}] at @s positioned ~-1 ~-5 ~2 run function core:bridge/place/ with entity @p[tag=placed] SelectedItem.components."minecraft:custom_data"