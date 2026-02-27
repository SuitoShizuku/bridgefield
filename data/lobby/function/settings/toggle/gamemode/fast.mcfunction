execute if score $gamemode bf matches 2 at @n[tag=opt.interact] at @n[type=text_display] run return run function lobby:settings/failed
scoreboard players set $gamemode bf 2
execute at @n[tag=opt.interact] at @n[type=text_display] run function lobby:settings/success_g
function lobby:settings/toggle/gamemode/lit