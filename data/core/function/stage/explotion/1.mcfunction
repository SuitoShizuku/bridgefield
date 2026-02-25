fill ~-2 ~-4 ~-2 ~2 ~11 ~2 air
playsound entity.generic.explode block @a ~ ~ ~ 2 0.9 0.5
particle explosion_emitter ~ ~2 ~ 0 0 0 0 1 force @a
kill @e[tag=game.interact.bridge,sort=nearest,limit=4]
kill @s[tag=game.marker.island]