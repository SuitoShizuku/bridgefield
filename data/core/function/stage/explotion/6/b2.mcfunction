fill 63 1 338 107 20 346 air
place template core:map/6/destroy/b2 63 1 338 none
playsound entity.generic.explode block @a ~ ~ ~ 2 0.9 0.5
particle explosion_emitter ~ ~2 ~ 0 0 0 0 1 force @a
particle explosion_emitter ~ ~-3 ~ 0 0 0 0 1 force @a
particle explosion_emitter ~ ~-9 ~ 0 0 0 0 1 force @a
kill @e[tag=game.interact.bridge,sort=nearest,limit=4,distance=..5]
kill @s[tag=game.marker.island]