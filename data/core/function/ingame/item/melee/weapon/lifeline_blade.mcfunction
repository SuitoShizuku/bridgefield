#体力の80%をダメにする
#小数点以下は切り捨て

scoreboard players operation $lb_dmg/ bf = @s status.hp
scoreboard players set $temp bf 80
scoreboard players operation $lb_dmg/ bf /= $temp bf
execute store result storage bf:item melee.lifeline_blade.dmg int 1 run scoreboard players get $lb_dmg/ bf

function core:ingame/item/melee/weapon/lifeline_blade/dmg with storage bf:item melee.lifeline_blade
