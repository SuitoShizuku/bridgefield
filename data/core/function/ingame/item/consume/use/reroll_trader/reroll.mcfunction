
execute if items entity @s weapon.mainhand * run loot give @s loot core:root
execute if items entity @s weapon.mainhand * run item replace entity @s weapon.mainhand with air
execute if items entity @s weapon.mainhand * run playsound minecraft:entity.wandering_trader.trade player @s ~ ~ ~ 1 2 0.1
execute unless items entity @s weapon.mainhand * run playsound minecraft:entity.wandering_trader.no player @s ~ ~ ~ 1 2 0.1
advancement revoke @s only core:reroll_trader