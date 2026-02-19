advancement revoke @s only lobby:start
playsound ui.button.click player @s ~ ~ ~ 1 1.3 1
execute if score $ready bf matches 0 run return run function core:start/
execute if score $ready bf matches 1 run return run function core:start/cancel