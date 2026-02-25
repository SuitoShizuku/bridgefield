advancement revoke @s only core:bridge_damage_s
execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{bridgeBreakable:true}] run return run function core:bridge/damage/fail

# 橋が存在すれば耐久値減算
execute at @n[type=interaction,tag=game.interact.bridge,tag=south,nbt={attack:{}}] positioned ~ ~4 ~3 run function core:bridge/damage/ with entity @s SelectedItem.components."minecraft:custom_data"
# 初期化
# tag @s remove bridge.attacker
# execute as @e[type=interaction,tag=game.interact.bridge,tag=east,nbt={attack:{}}] run data remove entity @s attack