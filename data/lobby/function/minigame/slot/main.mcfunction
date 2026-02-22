

scoreboard players add @e[tag=lobby.minigame.slot,type=marker] bf 1
execute as @n[tag=lobby.minigame.slot.1] if score @s bf matches 3.. at @s run function lobby:minigame/slot/summon {num:1}
execute as @n[tag=lobby.minigame.slot.2] if score @s bf matches 3.. at @s run function lobby:minigame/slot/summon {num:2}
execute as @n[tag=lobby.minigame.slot.3] if score @s bf matches 3.. at @s run function lobby:minigame/slot/summon {num:3}

execute if block -13 3 -6 minecraft:stone_button[facing=south,powered=true] run kill @n[tag=lobby.minigame.slot.1,type=marker]
execute if block -12 3 -6 minecraft:stone_button[facing=south,powered=true] run kill @n[tag=lobby.minigame.slot.2,type=marker]
execute if block -11 3 -6 minecraft:stone_button[facing=south,powered=true] run kill @n[tag=lobby.minigame.slot.3,type=marker]
execute if block -10 3 -6 minecraft:oak_button[facing=south,powered=true] run function lobby:minigame/slot/init
fill -13 3 -6 -11 3 -6 stone_button[facing=south,powered=false]
setblock -10 3 -6 oak_button[facing=south,powered=false]

execute if entity @n[tag=lobby.minigame.slot.1,type=marker] as @e[type=item_display,tag=lobby.minigame.slot.1] at @s run tp @s ~ ~-0.3 ~
execute if entity @n[tag=lobby.minigame.slot.2,type=marker] as @e[type=item_display,tag=lobby.minigame.slot.2] at @s run tp @s ~ ~-0.3 ~
execute if entity @n[tag=lobby.minigame.slot.3,type=marker] as @e[type=item_display,tag=lobby.minigame.slot.3] at @s run tp @s ~ ~-0.3 ~
execute unless entity @n[tag=lobby.minigame.slot.1,type=marker] as @e[type=item_display,tag=lobby.minigame.slot.1] at @s align y run tp @s ~ ~0.5 ~
execute unless entity @n[tag=lobby.minigame.slot.2,type=marker] as @e[type=item_display,tag=lobby.minigame.slot.2] at @s align y run tp @s ~ ~0.5 ~
execute unless entity @n[tag=lobby.minigame.slot.3,type=marker] as @e[type=item_display,tag=lobby.minigame.slot.3] at @s align y run tp @s ~ ~0.5 ~

execute as @e[type=item_display,tag=lobby.minigame.slot] at @s if block ~ ~ ~ air run kill @s