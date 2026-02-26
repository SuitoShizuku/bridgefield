advancement revoke @s only core:consume_item
execute if items entity @s weapon.mainhand fishing_rod run return 0
function core:ingame/item/consume/use/ with entity @s SelectedItem.components."minecraft:custom_data"
# ターンエンドしないタグがついている場合
execute if entity @s[tag=consumeNoTurnEnd] run return run tag @s remove consumeNoTurnEnd
item replace entity @s weapon.mainhand with air
loot give @s loot core:root
function core:ingame/turn/end