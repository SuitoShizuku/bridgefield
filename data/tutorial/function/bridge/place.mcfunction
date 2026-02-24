advancement revoke @s only tutorial:bridge_place
tag @n[type=interaction,tag=tutorial,nbt={interaction:{}}] add tutorial.place_bridge
execute positioned as @n[tag=tutorial.place_bridge,nbt={interaction:{}}] run place template tutorial:tutorial_bridge ~-1 ~ ~1 none
execute as @e[tag=tutorial.place_bridge] run data remove entity @s interaction