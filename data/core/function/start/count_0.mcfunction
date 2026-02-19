title @a title ""
title @a subtitle {translate:"bf.game.countend",fallback:"リソースパックを導入してください"}
playsound entity.player.levelup master @a ~ ~ ~ 1 1.2 1

setblock 0 2 5 minecraft:waxed_copper_bulb[lit=false]
data modify entity @n[type=text_display,tag=lobby.text.start] text set value [{translate:"bf.lobby.start",fallback:"リソースパックを導入してください"}]
scoreboard players set $ready bf 0

