# 素手で右クリックしていても大丈夫なように、初期化
execute as @e[type=interaction,tag=game.interact.bridge,tag=east,nbt={interaction:{}}] run data remove entity @s interaction

$execute if entity @s[tag=east] run place template core:bridge/$(bridgeId) ~ ~ ~ none none
$execute if entity @s[tag=south] run place template core:bridge/$(bridgeId) ~ ~ ~ clockwise_90 none
$execute if entity @s[tag=west] run place template core:bridge/$(bridgeId) ~ ~ ~ 180 none
$execute if entity @s[tag=north] run place template core:bridge/$(bridgeId) ~ ~ ~ counterclockwise_90 none

# アイテムを消してタグをリセットし、ターンを回す
item replace entity @p[tag=placed] weapon.mainhand with air
execute as @p[tag=placed] run function core:ingame/turn/end
tag @a[tag=placed] remove placed