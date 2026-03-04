fill 63 1 338 107 20 346 air
execute positioned 85.5 6.5 342.5 run kill @e[distance=..9,tag=!game.train,type=block_display]
place template core:map/6/destroy/b2 63 1 338 none
playsound entity.generic.explode block @a ~ ~ ~ 2 0.9 0.5
particle explosion_emitter ~ ~2 ~ 0 0 0 0 1 force @a
particle explosion_emitter ~ ~-3 ~ 0 0 0 0 1 force @a
particle explosion_emitter ~ ~-9 ~ 0 0 0 0 1 force @a
execute positioned ~12 ~ ~ run kill @e[tag=game.interact.bridge,sort=nearest,limit=2,distance=..5,type=interaction]
execute positioned ~-12 ~ ~ run kill @e[tag=game.interact.bridge,sort=nearest,limit=2,distance=..5,type=interaction]
kill @s[tag=game.marker.island]
scoreboard players set $train.onRail bf 1