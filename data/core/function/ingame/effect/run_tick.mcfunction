execute if entity @s[tag=burn] run function core:ingame/effect/debuff/burn/tick
execute if entity @s[tag=frostbite] run function core:ingame/effect/debuff/frostbite/tick
execute unless score @s blindness matches -2147483648..2147483647 run scoreboard players set @s blindness 0
execute if score @s blindness matches 1.. run function core:ingame/effect/debuff/blindness/tick