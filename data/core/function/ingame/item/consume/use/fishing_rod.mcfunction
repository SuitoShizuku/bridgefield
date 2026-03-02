advancement revoke @s only core:use_fishing_rod
execute if score $now bf matches 1 run return 0
execute if entity @s[tag=true_turn] run return run function core:ingame/turn/end
tag @s add stun