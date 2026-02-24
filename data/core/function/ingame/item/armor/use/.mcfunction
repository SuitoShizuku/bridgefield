
$scoreboard players add @s defense $(armorDefense)
$tellraw @s [{"translate":"bf.chat.add_defense",fallback:"防御力%1$s → %2$s (装備%3$s層目)",with:[{text:"+$(armorDefense)",color:"gray"},{score:{name:"@s",objective:"defense"},color:"gray"},{"score":{name:"@s",objective:"armor_count"}}]}]
$function core:ingame/item/armor/use/$(armorId)
item modify entity @s armor.head core:visual_armor
item modify entity @s armor.chest core:visual_armor
item modify entity @s armor.legs core:visual_armor
item modify entity @s armor.feet core:visual_armor