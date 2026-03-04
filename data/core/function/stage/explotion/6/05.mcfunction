fill ~-5 ~-14 ~-15 ~3 ~6 ~5 air
fill ~-5 ~-14 ~-3 ~15 ~6 ~5 air
place template core:map/6/destroy/05 ~-5 ~-14 ~-15 none
playsound entity.generic.explode block @a ~ ~ ~ 2 0.9 0.5
particle explosion_emitter ~ ~2 ~ 0 0 0 0 1 force @a
particle explosion_emitter ~ ~-3 ~ 0 0 0 0 1 force @a
particle explosion_emitter ~ ~-9 ~ 0 0 0 0 1 force @a
execute positioned ~12 ~ ~ run kill @e[tag=game.interact.bridge,sort=nearest,limit=4,distance=..5,type=interaction]
execute positioned ~ ~ ~-12 run kill @e[tag=game.interact.bridge,sort=nearest,limit=4,distance=..5,type=interaction]
kill @s[tag=game.marker.island]