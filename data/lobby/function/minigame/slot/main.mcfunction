

scoreboard players add @e[tag=lobby.minigame.slot,type=marker] bf 1
execute as @n[tag=lobby.minigame.slot.1] if score @s bf matches 4.. at @s run function lobby:minigame/slot/summon {num:1}
execute as @n[tag=lobby.minigame.slot.2] if score @s bf matches 4.. at @s run function lobby:minigame/slot/summon {num:2}
execute as @n[tag=lobby.minigame.slot.3] if score @s bf matches 4.. at @s run function lobby:minigame/slot/summon {num:3}

execute if block -13 3 -6 minecraft:stone_button[facing=south,powered=true] run kill @n[tag=lobby.minigame.slot.1]
execute if block -12 3 -6 minecraft:stone_button[facing=south,powered=true] run kill @n[tag=lobby.minigame.slot.2]
execute if block -11 3 -6 minecraft:stone_button[facing=south,powered=true] run kill @n[tag=lobby.minigame.slot.3]
execute if block -10 3 -6 minecraft:oak_button[facing=south,powered=true] run function lobby:minigame/slot/init
fill -13 3 -6 -11 3 -6 stone_button[facing=south,powered=false]
setblock ~-10 ~3 ~-6 oak_button[facing=south,powered=false]

execute if entity @n[tag=lobby.minigame.slot.1,type=marker] as @e[type=item_display,tag=lobby.minigame.slot.1] at @s run tp @s ~ ~-0.3 ~
execute if entity @n[tag=lobby.minigame.slot.2,type=marker] as @e[type=item_display,tag=lobby.minigame.slot.2] at @s run tp @s ~ ~-0.3 ~
execute if entity @n[tag=lobby.minigame.slot.3,type=marker] as @e[type=item_display,tag=lobby.minigame.slot.3] at @s run tp @s ~ ~-0.3 ~

execute positioned -13.0 -3 -8.0 run kill @e[type=minecraft:item_display,dx=2,dy=2,dz=0]