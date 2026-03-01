tellraw @a[tag=!blindness] [{translate:"bf.chat.EF.prefix",fallback:"終末の時: ",color:dark_green},{translate:"bf.chat.EF.4",fallback:"%sのHP§c-30",with:[{selector:"@s"}],color:gray}]
tellraw @s[tag=blindness] [{translate:"bf.chat.EF.prefix",fallback:"終末の時: ",color:dark_green},{translate:"bf.chat.EF.4",fallback:"%sのHP§c-30",with:[{selector:"@s"}],color:gray}]
scoreboard players remove @s status.hp 30