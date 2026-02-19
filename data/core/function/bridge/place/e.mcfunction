advancement revoke @s only core:bridge_place_e
tag @s add placed
execute as @e[type=interaction,tag=game.interact.bridge,tag=east] if data entity @s interaction at @s positioned ~1 ~-5 ~-2 run function core:bridge/place/ with entity @p[tag=placed] SelectedItem.components."minecraft:custom_data"