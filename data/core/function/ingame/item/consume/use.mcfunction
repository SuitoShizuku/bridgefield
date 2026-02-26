advancement revoke @s only core:consume_item
execute if items entity @s weapon.mainhand fishing_rod run return 0
function core:ingame/item/consume/use/ with entity @s SelectedItem.components."minecraft:custom_data"
# ターンエンドしないタグがついている場合
execute if entity @s[tag=consumeNoTurnEnd] run return run tag @s remove consumeNoTurnEnd
loot give @s loot core:root
item replace entity @s weapon.mainhand with air
function core:ingame/turn/end