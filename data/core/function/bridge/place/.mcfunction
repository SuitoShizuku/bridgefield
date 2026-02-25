# 素手で右クリックしていても大丈夫なように、初期化
execute as @e[type=interaction,tag=game.interact.bridge,nbt={interaction:{}}] run data remove entity @s interaction

$execute if entity @s[tag=east] run place template core:bridge/$(bridgeId) ~ ~ ~ none none
$execute if entity @s[tag=south] run place template core:bridge/$(bridgeId) ~ ~ ~ clockwise_90 none
$execute if entity @s[tag=west] run place template core:bridge/$(bridgeId) ~ ~ ~ 180 none
$execute if entity @s[tag=north] run place template core:bridge/$(bridgeId) ~ ~ ~ counterclockwise_90 none

#音テスト
playsound minecraft:block.bamboo_wood_door.open block @s ~ ~ ~ 1 0.1 0.1

# アイテムを消してギブ
item replace entity @p[tag=placed] weapon.mainhand with air
loot give @p[tag=placed] loot core:root
# タグをリセットし、ターンを回す
execute if score $now bf matches 2 as @p[tag=placed] run function core:ingame/turn/end
tag @a[tag=placed] remove placed
