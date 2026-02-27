# ターン時間(最大設定10分)
execute if score $turn_time bf matches 12000 run return run execute at @n[tag=opt.interact] at @n[type=text_display] run function lobby:settings/failed
execute if score $turn_time bf matches 6000..11000 run scoreboard players add $turn_time bf 1000
execute if score $turn_time bf matches ..5900 run scoreboard players add $turn_time bf 100
execute as @n[tag=lobby.text.settings.turn_time,type=text_display] run function lobby:settings/lr_switch/turn_time/set_display
execute at @n[tag=opt.interact] at @n[type=text_display] run function lobby:settings/success_b