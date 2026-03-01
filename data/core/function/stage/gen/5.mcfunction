function core:initialize/stage
fill 119 33 260 103 3 192 air

place template core:map/5/island_8 ~-2 ~16 ~-29 none
place template core:map/5/island_6 ~-2 ~16 ~-21 none
place template core:map/5/island_4 ~-2 ~16 ~-13 none
place template core:map/5/island_2 ~-2 ~16 ~-5 none
place template core:map/5/island_1 ~-2 ~16 ~3 none
place template core:map/5/island_3 ~-2 ~16 ~11 none
place template core:map/5/island_5 ~-2 ~16 ~19 none
place template core:map/5/island_7 ~-2 ~16 ~27 none
summon minecraft:marker 112.5 18.0 226.5 {Tags:["game","game.marker.island.center"]}

execute as @e[tag=game.interact.bridge] run data remove entity @s interaction
execute as @e[tag=game.interact.bridge] run data remove entity @s attack

tp @a[team=player.red] ~ ~22 ~4 facing ~ ~18 ~
tp @a[team=player.blue] ~ ~22 ~-4 facing ~ ~18 ~
tp @a[team=player.yellow] ~ ~22 ~12 facing ~ ~18 ~
tp @a[team=player.green] ~ ~22 ~-12 facing ~ ~18 ~
tp @a[team=player.orange] ~ ~22 ~20 facing ~ ~18 ~
tp @a[team=player.pink] ~ ~22 ~-20 facing ~ ~18 ~
tp @a[team=player.cyan] ~ ~22 ~28 facing ~ ~18 ~
tp @a[team=player.white] ~ ~22 ~-28 facing ~ ~18 ~
tp @a[team=spectator] ~ ~32 ~ facing ~ ~18 ~