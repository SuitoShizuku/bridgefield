fill ~-4 ~-14 ~-4 ~4 ~5 ~4 air
place template core:map/6/destroy/21 ~-4 ~-14 ~-4 none
playsound entity.generic.explode block @a ~ ~ ~ 2 0.9 0.5
particle explosion_emitter ~ ~2 ~ 0 0 0 0 1 force @a
particle explosion_emitter ~ ~-3 ~ 0 0 0 0 1 force @a
particle explosion_emitter ~ ~-9 ~ 0 0 0 0 1 force @a
kill @e[tag=game.interact.bridge,sort=nearest,limit=4,distance=..5]
kill @s[tag=game.marker.island]