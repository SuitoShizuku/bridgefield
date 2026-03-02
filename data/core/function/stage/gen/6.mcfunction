function core:initialize/stage
function core:stage/train/build
fill 129 2 342 41 39 298 air
fill 129 2 343 41 39 386 air

place template core:map/6/gen/00 ~-40 ~5 ~-40
place template core:map/6/gen/01 ~-40 ~5 ~8
place template core:map/6/gen/10 ~80 ~5 ~-40
place template core:map/6/gen/11 ~8 ~5 ~8
place template core:map/6/gen/b1 ~-54 ~2 ~-4
place template core:map/6/gen/b2 ~-22 ~2 ~-4
place template core:map/6/gen/b3 ~26 ~2 ~-4

execute as @e[tag=game.interact.bridge] run data remove entity @s interaction
execute as @e[tag=game.interact.bridge] run data remove entity @s attack

tp @a[team=player.red] 49 18 354 facing ~ ~18 ~
tp @a[team=player.blue] 121 18 330 facing ~ ~18 ~
tp @a[team=player.yellow] 73 18 306 facing ~ ~18 ~
tp @a[team=player.green] 97 18 378 facing ~ ~18 ~
tp @a[team=player.orange] 49 18 330 facing ~ ~18 ~
tp @a[team=player.pink] 121 18 354 facing ~ ~18 ~
tp @a[team=player.cyan] 97 18 306 facing ~ ~18 ~
tp @a[team=player.white] 73 18 378 facing ~ ~18 ~
tp @a[team=spectator] ~ ~32 ~ facing ~ ~18 ~