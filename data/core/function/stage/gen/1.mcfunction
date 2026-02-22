function core:initialize/stage
fill 27 38 152 -27 2 98 air
fill 27 2 152 -27 2 98 water


place template core:island_0 ~-22 ~12 ~-22
place template core:island_0 ~-12 ~12 ~-22
place template core:island_0 ~-2 ~12 ~-22
place template core:island_0 ~8 ~12 ~-22
place template core:island_0 ~18 ~12 ~-22

place template core:island_0 ~-22 ~12 ~-12
place template core:island_5 ~-12 ~12 ~-12
place template core:island_3 ~-2 ~12 ~-12
place template core:island_7 ~8 ~12 ~-12
place template core:island_0 ~18 ~12 ~-12

place template core:island_0 ~-22 ~12 ~-2
place template core:island_1 ~-12 ~12 ~-2
place template core:island_c ~-2 ~12 ~-2
place template core:island_2 ~8 ~12 ~-2
place template core:island_0 ~18 ~12 ~-2

place template core:island_0 ~-22 ~12 ~8
place template core:island_8 ~-12 ~12 ~8
place template core:island_4 ~-2 ~12 ~8
place template core:island_6 ~8 ~12 ~8
place template core:island_0 ~18 ~12 ~8

place template core:island_0 ~-22 ~12 ~18
place template core:island_0 ~-12 ~12 ~18
place template core:island_0 ~-2 ~12 ~18
place template core:island_0 ~8 ~12 ~18
place template core:island_0 ~18 ~12 ~18

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