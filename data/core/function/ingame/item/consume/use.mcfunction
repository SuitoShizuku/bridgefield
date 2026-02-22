advancement revoke @s only core:consume_item
function core:ingame/item/consume/use/ with entity @s SelectedItem.components."minecraft:custom_data"
item replace entity @s weapon.mainhand with air
loot give @s loot core:root
function core:ingame/turn/end