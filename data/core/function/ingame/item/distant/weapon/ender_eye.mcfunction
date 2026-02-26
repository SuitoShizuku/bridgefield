execute at @p[tag=attacker] run playsound entity.player.teleport player @a ~ ~ ~ 1 1 0
execute at @p[tag=attacker] run particle dust{color:[1.0,0.0,1.0],scale:1.0} ~ ~1 ~ 0.2 0.4 0.2 0.1 20 normal @a
tp @s @p[tag=attacker]
tp @p[tag=attacker] ~ ~ ~
particle dust{color:[1.0,0.0,1.0],scale:1.0} ~ ~1 ~ 0.2 0.4 0.2 0.1 20 normal @a
playsound entity.player.teleport player @a ~ ~ ~ 1 1 0