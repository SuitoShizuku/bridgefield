$function core:ingame/item/consume/use/$(armorId)
$scoreboard players add @s defense $(armorDefense)
tellraw @s [{"translate":"bf.item.use_defence",fallback:"防御力%1$s → %2$s (装備%3$s層目)",with:[{text:"$(armorDefense)",color:"gray"},{score:{name:"@s",objective:"defense"},color:"gray"},{"score":{name:"@s",objective:"armor_count"}}]}]