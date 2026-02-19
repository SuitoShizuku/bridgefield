$execute store result score $snow_bridge bf run random value 1..$(max)
execute if score $snow_bridge bf matches 1..40 run setblock ~ ~ ~ powder_snow
execute if score $snow_bridge bf matches 41.. run setblock ~ ~ ~ snow_block