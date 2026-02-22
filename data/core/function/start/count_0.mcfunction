title @a title ""
title @a subtitle {translate:"bf.game.countend",fallback:"スタート"}
playsound entity.player.levelup master @a ~ ~ ~ 1 1.2 1
execute as @a run attribute @s knockback_resistance modifier add bf 10 add_value

setblock 0 2 5 minecraft:waxed_copper_bulb[lit=false]
data modify entity @n[type=text_display,tag=lobby.text.start] text set value [{translate:"bf.lobby.start",fallback:"右クリックでスタート"}]
scoreboard players set $ready bf 0

scoreboard players set @a initiative 0
scoreboard players set $initiative_root bf 0
function core:start/set_initiative
function core:start/set_team_1
scoreboard players set $now bf 2

bossbar set turn_timer_my visible true
bossbar set turn_timer_other visible true

function core:stage/gen/
scoreboard players set $round bf 0
clear @a
scoreboard players set @a status.hp 40
scoreboard players set @a status.mp 20
scoreboard players set @a status.build 20
scoreboard players set @a defense 0
loot give @a loot core:root
loot give @a loot core:root
loot give @a loot core:root
loot give @a loot core:root
loot give @a loot core:root
loot give @a loot core:root
loot give @a loot core:root
loot give @a loot core:root
loot give @a loot core:root
function core:ingame/round/start