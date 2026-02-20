tag @a remove placed
data remove entity @s interaction

$execute if entity @s[tag=east] run place template core:bridge/$(bridgeId) ~ ~ ~ none none
$execute if entity @s[tag=south] run place template core:bridge/$(bridgeId) ~ ~ ~ clockwise_90 none
$execute if entity @s[tag=west] run place template core:bridge/$(bridgeId) ~ ~ ~ 180 none
$execute if entity @s[tag=north] run place template core:bridge/$(bridgeId) ~ ~ ~ counterclockwise_90 none

item replace entity @s weapon.mainhand with air