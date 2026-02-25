execute as @a[distance=..3] at @s run function core:ingame/item/armor/damage {damage:"0",trueDamage:"15"}
particle explosion_emitter ~ ~ ~ 0 0 0 0 1 normal
playsound minecraft:entity.generic.explode ambient @a ~ ~ ~ 1 1.3
kill @s