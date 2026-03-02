tellraw @a[tag=!blindness] [{translate:"bf.chat.EF.prefix",fallback:"終末の時: ",color:dark_green},{translate:"bf.chat.EF.1",fallback:"%sのHP§a+10",with:[{selector:"@s"}],color:gray}]
tellraw @s[tag=blindness] [{translate:"bf.chat.EF.prefix",fallback:"終末の時: ",color:dark_green},{translate:"bf.chat.EF.1",fallback:"%sのHP§a+10",with:[{selector:"@s"}],color:gray}]
scoreboard players add @s status.hp 10