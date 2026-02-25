fill ~-2 ~-11 ~-2 ~2 ~8 ~2 air
execute store result score $island.exploded bf run random value 1..4
execute if score $island.exploded bf matches 1 run place template core:map/2/island_-1 ~-2 ~-13 ~-2 none
execute if score $island.exploded bf matches 2 run place template core:map/2/island_-1 ~2 ~-13 ~-2 clockwise_90
execute if score $island.exploded bf matches 3 run place template core:map/2/island_-1 ~-2 ~-13 ~2 counterclockwise_90
execute if score $island.exploded bf matches 4 run place template core:map/2/island_-1 ~2 ~-13 ~2 180
kill @e[tag=game.interact.bridge,sort=nearest,limit=4]
kill @s[tag=game.marker.island]