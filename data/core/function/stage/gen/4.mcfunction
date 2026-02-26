function core:initialize/stage
fill 8 3 209 42 39 243 light[level=10]

place template core:map/4/island_5 ~-12 ~16 ~-12
place template core:map/4/island_3 ~-2 ~16 ~-12
place template core:map/4/island_7 ~8 ~16 ~-12

place template core:map/4/island_1 ~-12 ~16 ~-2
place template core:map/4/island_c ~-2 ~16 ~-2
place template core:map/4/island_2 ~8 ~16 ~-2

place template core:map/4/island_8 ~-12 ~16 ~8
place template core:map/4/island_4 ~-2 ~16 ~8
place template core:map/4/island_6 ~8 ~16 ~8

execute as @e[tag=game.interact.bridge] run data remove entity @s interaction
execute as @e[tag=game.interact.bridge] run data remove entity @s attack

tp @a[team=player.red] ~-10 ~19 ~0 facing ~ ~19 ~
tp @a[team=player.blue] ~10 ~19 ~0 facing ~ ~19 ~
tp @a[team=player.yellow] ~0 ~19 ~-10 facing ~ ~19 ~
tp @a[team=player.green] ~0 ~19 ~10 facing ~ ~19 ~
tp @a[team=player.orange] ~-10 ~19 ~-10 facing ~ ~19 ~
tp @a[team=player.pink] ~10 ~19 ~10 facing ~ ~19 ~
tp @a[team=player.cyan] ~10 ~19 ~-10 facing ~ ~19 ~
tp @a[team=player.white] ~-10 ~19 ~10 facing ~ ~19 ~
tp @a[team=spectator] ~ ~30 ~ facing ~ ~19 ~