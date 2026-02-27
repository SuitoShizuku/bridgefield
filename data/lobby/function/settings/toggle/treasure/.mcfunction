scoreboard players add $treasure bf 1
execute if score $treasure bf matches 3 run scoreboard players set $treasure bf 1
execute at @n[tag=opt.interact] run function lobby:settings/toggle/treasure/set_display
execute at @n[tag=opt.interact] at @n[type=text_display] run function lobby:settings/success_g