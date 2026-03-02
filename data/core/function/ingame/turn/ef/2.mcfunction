tellraw @a[tag=!blindness] [{translate:"bf.chat.EF.prefix",fallback:"終末の時: ",color:dark_green},{translate:"bf.chat.EF.2",fallback:"%sのHP§c-10",with:[{selector:"@s"}],color:gray}]
tellraw @s[tag=blindness] [{translate:"bf.chat.EF.prefix",fallback:"終末の時: ",color:dark_green},{translate:"bf.chat.EF.2",fallback:"%sのHP§c-10",with:[{selector:"@s"}],color:gray}]
scoreboard players remove @s status.hp 10
damage @s 0.1 generic