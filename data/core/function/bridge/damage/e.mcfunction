advancement revoke @s only core:bridge_damage_e
execute unless predicate core:check_bridge_attack run return run function core:bridge/damage/fail
# ティスプレイがなければ
execute unless entity @n[tag=game.bridge.durability,distance=..1] run return run function core:bridge/damage/fail

tag @s add bridge.attacker
# 橋が存在すれば耐久値減算
execute at @n[type=interaction,tag=game.interact.bridge,tag=east,nbt={attack:{}}] positioned ~3 ~4 ~ run function core:bridge/damage/ with entity @s SelectedItem.components."minecraft:custom_data"
# 初期化
# tag @s remove bridge.attacker
# execute as @e[type=interaction,tag=game.interact.bridge,tag=east,nbt={attack:{}}] run data remove entity @s attack