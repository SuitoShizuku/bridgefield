execute store result score $bridge_block bf run random value 1..100
execute if score $bridge_block bf matches 1..20 run return run setblock ~ ~ ~ waxed_copper_block
execute if score $bridge_block bf matches 21..40 run return run setblock ~ ~ ~ waxed_exposed_copper
execute if score $bridge_block bf matches 41..60 run return run setblock ~ ~ ~ waxed_weathered_copper
execute if score $bridge_block bf matches 61..80 run return run setblock ~ ~ ~ waxed_oxidized_copper
setblock ~ ~ ~ air