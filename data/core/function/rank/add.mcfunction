$scoreboard players set $temp rank.xp $(xp)
scoreboard players set $temp2 rank.xp 10
scoreboard players operation $temp rank.xp *= @s rank.xp.multiple
scoreboard players operation $temp rank.xp /= $temp2 rank.xp
scoreboard players operation @s rank.xp += $temp rank.xp
$execute if score @s rd.settings.notification.xp_get matches 1 run function tellraw @s {"translate":"bf.rank.xp.add",fallback:"経験値を%s獲得しました",with:[{text:"$(xp)XP",color:green}]}