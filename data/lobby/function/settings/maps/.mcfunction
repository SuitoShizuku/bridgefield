advancement revoke @s only lobby:map
execute if entity @n[type=interaction,nbt={interaction:{}},tag=lobby.interact.map.center] run function lobby:settings/maps/center with entity @n[tag=lobby.monument.map] data
execute if entity @n[type=interaction,nbt={interaction:{}},tag=lobby.interact.map.right] run function lobby:settings/maps/right
execute if entity @n[type=interaction,nbt={interaction:{}},tag=lobby.interact.map.left] run function lobby:settings/maps/left


execute as @e[type=interaction,tag=lobby.interact.map] run data remove entity @s interaction