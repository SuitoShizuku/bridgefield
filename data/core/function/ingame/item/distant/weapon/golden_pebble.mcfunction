scoreboard players remove @s defense 3
execute if score @s defense matches ..-1 run scoreboard players set @s defense 0
tellraw @s [{"translate":"bf.chat.add_defense",fallback:"防御力%1$s → %2$s (装備%3$s層)",with:[{text:"-3",color:"red"},{score:{name:"@s",objective:"defense"},color:"gray"},{"score":{name:"@s",objective:"armor_count"}}]}]