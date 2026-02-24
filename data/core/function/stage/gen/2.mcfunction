function core:initialize/stage
fill 128 38 152 74 3 98 air
clone 73 -4 97 129 -2 153 73 0 97 strict


place template core:map/2/island_r90 ~-22 ~4 ~-22
place template core:map/2/island_0 ~-12 ~4 ~-22
place template core:map/2/island_0 ~-2 ~4 ~-22
place template core:map/2/island_0 ~8 ~4 ~-22
place template core:map/2/island_r270 ~18 ~4 ~-22

place template core:map/2/island_0 ~-22 ~4 ~-12
place template core:map/2/island_5 ~-12 ~4 ~-12
place template core:map/2/island_3 ~-2 ~4 ~-12
place template core:map/2/island_7 ~8 ~4 ~-12
place template core:map/2/island_0 ~18 ~4 ~-12

place template core:map/2/island_0 ~-22 ~4 ~-2
place template core:map/2/island_1 ~-12 ~4 ~-2
place template core:map/2/island_c ~-2 ~4 ~-2
place template core:map/2/island_2 ~8 ~4 ~-2
place template core:map/2/island_0 ~18 ~4 ~-2

place template core:map/2/island_0 ~-22 ~4 ~8
place template core:map/2/island_8 ~-12 ~4 ~8
place template core:map/2/island_4 ~-2 ~4 ~8
place template core:map/2/island_6 ~8 ~4 ~8
place template core:map/2/island_0 ~18 ~4 ~8

place template core:map/2/island_r0 ~-22 ~4 ~18
place template core:map/2/island_0 ~-12 ~4 ~18
place template core:map/2/island_0 ~-2 ~4 ~18
place template core:map/2/island_0 ~8 ~4 ~18
place template core:map/2/island_r180 ~18 ~4 ~18

execute as @e[tag=game.interact.bridge] run data remove entity @s interaction

tp @a[team=player.red] ~-10 ~19 ~0 facing ~ ~19 ~
tp @a[team=player.blue] ~10 ~19 ~0 facing ~ ~19 ~
tp @a[team=player.yellow] ~0 ~19 ~-10 facing ~ ~19 ~
tp @a[team=player.green] ~0 ~19 ~10 facing ~ ~19 ~
tp @a[team=player.orange] ~-10 ~19 ~-10 facing ~ ~19 ~
tp @a[team=player.pink] ~10 ~19 ~10 facing ~ ~19 ~
tp @a[team=player.cyan] ~10 ~19 ~-10 facing ~ ~19 ~
tp @a[team=player.white] ~-10 ~19 ~10 facing ~ ~19 ~
tp @a[team=spectator] ~ ~30 ~ facing ~ ~19 ~