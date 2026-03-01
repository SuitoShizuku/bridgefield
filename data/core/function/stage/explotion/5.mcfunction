fill ~-2 ~-3 ~-1 ~2 ~2 ~1 air
playsound entity.generic.explode block @a ~ ~ ~ 2 0.9 0.5
particle explosion_emitter ~ ~2 ~ 0 0 0 0 1 force @a
kill @e[tag=game.interact.bridge,sort=nearest,limit=4]
kill @s[tag=game.marker.island]