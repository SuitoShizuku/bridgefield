$scoreboard players set $temp defense $(damage)
scoreboard players operation $temp defense -= @s defense
$execute if score $temp defense matches ..0 run return run function core:ingame/item/armor/no_damage {damage:"$(damage)"}
scoreboard players operation @s status.hp -= $temp defense
item replace entity @s armor.head with air
item replace entity @s armor.body with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air
$tellraw @a [{translate:"bf.game.damage",fallback:"%1$s→攻撃:%3$s 防御:%4$s = %5$s ダメージ!(%2$s:%6$sHP)",with:[{selector:"@p[tag=attacker]"},{selector:"@p[tag=victim]"},{"text":"$(damage)",color:dark_red},{"score":{"name":"@s",objective:"defense"},color:gray},{"score":{name:"$temp",objective:"defense"},color:red},{score:{name:"@s",objective:"status.hp"},color:red}]}]
function core:ingame/deathcheck

scoreboard players set @s defense 0
function core:ingame/item/armor/armor_roll
function core:ingame/hplink