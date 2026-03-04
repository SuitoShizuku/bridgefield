fill ~-5 ~-14 ~-5 ~3 ~6 ~15 air
fill ~-5 ~-14 ~-5 ~15 ~6 ~3 air
place template core:map/6/destroy/00 ~-5 ~-14 ~-5 none
playsound entity.generic.explode block @a ~ ~ ~ 2 0.9 0.5
particle explosion_emitter ~ ~2 ~ 0 0 0 0 1 force @a
particle explosion_emitter ~ ~-3 ~ 0 0 0 0 1 force @a
particle explosion_emitter ~ ~-9 ~ 0 0 0 0 1 force @a
execute positioned ~12 ~ ~ run kill @e[tag=game.interact.bridge,sort=nearest,limit=2,distance=..5,type=interaction]
execute positioned ~ ~ ~12 run kill @e[tag=game.interact.bridge,sort=nearest,limit=2,distance=..5,type=interaction]
kill @s[tag=game.marker.island]