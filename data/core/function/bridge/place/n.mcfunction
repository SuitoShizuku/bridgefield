advancement revoke @s only core:bridge_place_n
tag @s add placed
execute as @e[type=interaction,tag=game.interact.bridge,tag=north] if data entity @s interaction at @s positioned ~-2 ~-5 ~-1 run function core:bridge/place/ with entity @p[tag=placed] SelectedItem.components."minecraft:custom_data"