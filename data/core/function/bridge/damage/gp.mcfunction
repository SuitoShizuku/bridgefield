execute store result score $temp bf run random value 1..1000
scoreboard players operation $temp bf %= @s durability
scoreboard players add $temp bf 1
scoreboard players operation @s durability -= $temp bf