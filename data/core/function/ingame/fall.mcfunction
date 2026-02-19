advancement revoke @s only core:fall
execute if score $now bf matches 1 run return 0
execute if entity @s[tag=true_turn] run function core:ingame/turn/end
function core:ingame/dead