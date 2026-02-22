advancement revoke @s only core:armor_used
scoreboard players add @s armor_count 1
function core:ingame/item/armor/use/ with entity @s SelectedItem.components."minecraft:custom_data"
item replace entity @s weapon.mainhand with air