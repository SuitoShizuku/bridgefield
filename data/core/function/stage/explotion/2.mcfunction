fill ~-2 ~-11 ~-2 ~2 ~8 ~2 air
execute store result score $island.exploded bf run random value 1..4
execute if score $island.exploded bf matches 1 run place template core:map/2/island_-1 ~-2 ~-13 ~-2 none
execute if score $island.exploded bf matches 2 run place template core:map/2/island_-1 ~2 ~-13 ~-2 clockwise_90
execute if score $island.exploded bf matches 3 run place template core:map/2/island_-1 ~-2 ~-13 ~2 counterclockwise_90
execute if score $island.exploded bf matches 4 run place template core:map/2/island_-1 ~2 ~-13 ~2 180
playsound entity.generic.explode block @a ~ ~ ~ 2 0.9 0.5
particle explosion_emitter ~ ~2 ~ 0 0 0 0 1 force @a
particle explosion_emitter ~ ~-4 ~ 0 0 0 0 1 force @a
particle explosion_emitter ~ ~-11 ~ 0 0 0 0 1 force @a
kill @e[tag=game.interact.bridge,sort=nearest,limit=4]
kill @s[tag=game.marker.island]