execute if entity @s[tag=frostbite] run function core:ingame/effect/debuff/frostbite/turn
execute if entity @s[tag=burn] run function core:ingame/effect/debuff/burn/turn
execute if score @s blindness matches 1.. run function core:ingame/effect/debuff/blindness/turn