scoreboard players add $day bf 1
execute if score $day bf matches 4 run scoreboard players set $day bf 1
function lobby:settings/toggle/day/set_display
execute at @n[tag=opt.interact] run function lobby:settings/success_g