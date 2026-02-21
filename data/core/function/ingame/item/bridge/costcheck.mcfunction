execute store result score $temp status.build run data get entity @s SelectedItem.components."minecraft:custom_data"
execute if score @s status.build >= $temp status.build run return 1
return 0