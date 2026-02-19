execute store result score $bridge_block bf run random value 1..100
$execute if score $bridge_block bf matches 1..$(rate) run return run setblock ~ ~ ~ $(b)
$setblock ~ ~ ~ $(a)