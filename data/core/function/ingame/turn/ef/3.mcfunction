tellraw @a[tag=!blindness] [{translate:"bf.chat.EF.prefix",fallback:"終末の時: ",color:dark_green},{translate:"bf.chat.EF.3",fallback:"%sのHP§c-20",with:[{selector:"@s"}],color:gray}]
tellraw @s[tag=blindness] [{translate:"bf.chat.EF.prefix",fallback:"終末の時: ",color:dark_green},{translate:"bf.chat.EF.3",fallback:"%sのHP§c-20",with:[{selector:"@s"}],color:gray}]
scoreboard players remove @s status.hp 20
damage @s 0.1 generic