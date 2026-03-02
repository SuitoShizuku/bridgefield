tellraw @a[tag=!blindness] [{translate:"bf.chat.EF.prefix",fallback:"終末の時: ",color:dark_green},{translate:"bf.chat.EF.5",fallback:"%sの防御力§a+6",with:[{selector:"@s"}],color:gray}]
tellraw @s[tag=blindness] [{translate:"bf.chat.EF.prefix",fallback:"終末の時: ",color:dark_green},{translate:"bf.chat.EF.5",fallback:"%sの防御力§a+6",with:[{selector:"@s"}],color:gray}]
scoreboard players add @s defense 6