tellraw @a {"text":"Bomb!"}
tellraw @a [{"selector":"@s"},{"text":"が自決用爆弾を使用した！",bold:true,color:red}]

playsound entity.generic.explode block @a ~ ~ ~ 5 0.1 0.1

particle explosion_emitter ~ ~ ~ 15 15 15 0 50 force @a

execute as @e[distance=..10,tag=game.marker.island] at @s run function core:stage/explotion/

execute as @a[distance=..5] at @s run function core:ingame/item/armor/damage {damage:"15",trueDamage:"15"}
execute as @a at @a[distance=5..10] run function core:ingame/item/armor/damage {damage:"10",trueDamage:"10"}
execute as @a at @a[distance=10..15] run function core:ingame/item/armor/damage {damage:"5",trueDamage:"5"}
