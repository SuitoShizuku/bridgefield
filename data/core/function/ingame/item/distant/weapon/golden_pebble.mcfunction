scoreboard players remove @s defense 3
execute if score @s defense matches ..-1 run scoreboard players set @s defense 0
tellraw @p[tag=true_turn] [{"translate":"bf.chat.golden_pebble",fallback:"%4$sの防御力%1$s → %2$s (装備%3$s層)",with:[{text:"-3",color:"red"},{score:{name:"@s",objective:"defense"},color:"gray"},{"score":{name:"@s",objective:"armor_count"}},{selector:"@s"}]}]
tellraw @s [{"translate":"bf.chat.add_defense",fallback:"防御力%1$s → %2$s (装備%3$s層)",with:[{text:"-3",color:"red"},{score:{name:"@s",objective:"defense"},color:"gray"},{"score":{name:"@s",objective:"armor_count"}}]}]