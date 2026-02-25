advancement revoke @s only core:fall
execute if score $now bf matches 1 run return 0
function core:ingame/dead
execute if entity @s[tag=true_turn] run function core:ingame/turn/end
execute if entity @s[tag=true_turn] if function core:ingame/gameend_check run return run function core:ingame/end