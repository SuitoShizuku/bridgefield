function core:initialize/stage
fill -54 31 278 -128 3 241 air
fill -128 3 240 -54 31 204 air
clone -128 -3 204 -54 -2 278 -128 1 204 strict

place template core:map/3/island_0 ~-22 ~11 ~-32
place template core:map/3/island_0 ~-12 ~11 ~-32
place template core:map/3/island_0 ~-2 ~11 ~-32
place template core:map/3/island_0 ~8 ~11 ~-32
place template core:map/3/island_0 ~18 ~11 ~-32
place template core:map/3/island_0 ~28 ~11 ~-32

place template core:map/3/island_0 ~-32 ~11 ~-22
place template core:map/3/island_5 ~-22 ~11 ~-22
place template core:map/3/island_0 ~-12 ~11 ~-22
place template core:map/3/island_3 ~-2 ~11 ~-22
place template core:map/3/island_0 ~8 ~11 ~-22
place template core:map/3/island_7 ~18 ~11 ~-22
place template core:map/3/island_0 ~28 ~11 ~-22

place template core:map/3/island_0 ~-32 ~11 ~-12
place template core:map/3/island_0 ~-22 ~11 ~-12
place template core:map/3/island_0 ~-12 ~11 ~-12
place template core:map/3/island_0 ~-2 ~11 ~-12
place template core:map/3/island_0 ~8 ~11 ~-12
place template core:map/3/island_0 ~18 ~11 ~-12
place template core:map/3/island_0 ~28 ~11 ~-12

place template core:map/3/island_0 ~-32 ~11 ~-2
place template core:map/3/island_1 ~-22 ~11 ~-2
place template core:map/3/island_0 ~-12 ~11 ~-2
place template core:map/3/island_c ~-2 ~11 ~-2
place template core:map/3/island_0 ~8 ~11 ~-2
place template core:map/3/island_2 ~18 ~11 ~-2
place template core:map/3/island_0 ~28 ~11 ~-2

place template core:map/3/island_0 ~-32 ~11 ~8
place template core:map/3/island_0 ~-22 ~11 ~8
place template core:map/3/island_0 ~-12 ~11 ~8
place template core:map/3/island_0 ~-2 ~11 ~8
place template core:map/3/island_0 ~8 ~11 ~8
place template core:map/3/island_0 ~18 ~11 ~8
place template core:map/3/island_0 ~28 ~11 ~8

place template core:map/3/island_0 ~-32 ~11 ~18
place template core:map/3/island_8 ~-22 ~11 ~18
place template core:map/3/island_0 ~-12 ~11 ~18
place template core:map/3/island_4 ~-2 ~11 ~18
place template core:map/3/island_0 ~8 ~11 ~18
place template core:map/3/island_6 ~18 ~11 ~18
place template core:map/3/island_0 ~28 ~11 ~18

place template core:map/3/island_0 ~-32 ~11 ~18
place template core:map/3/island_0 ~-22 ~11 ~18
place template core:map/3/island_0 ~-12 ~11 ~18
place template core:map/3/island_0 ~-2 ~11 ~18
place template core:map/3/island_0 ~8 ~11 ~18
place template core:map/3/island_0 ~18 ~11 ~18
place template core:map/3/island_0 ~28 ~11 ~18

place template core:map/3/stage_centermonument -96 18 236

execute as @e[tag=game.interact.bridge] run data remove entity @s interaction

tp @a[team=player.red] ~-20 ~18 ~0 facing ~ ~18 ~
tp @a[team=player.blue] ~20 ~18 ~0 facing ~ ~18 ~
tp @a[team=player.yellow] ~0 ~18 ~-20 facing ~ ~18 ~
tp @a[team=player.green] ~0 ~18 ~20 facing ~ ~18 ~
tp @a[team=player.orange] ~-20 ~18 ~-20 facing ~ ~18 ~
tp @a[team=player.pink] ~20 ~18 ~20 facing ~ ~18 ~
tp @a[team=player.cyan] ~20 ~18 ~-20 facing ~ ~18 ~
tp @a[team=player.white] ~-20 ~18 ~20 facing ~ ~18 ~
tp @a[team=spectator] ~ ~30 ~ facing ~ ~18 ~