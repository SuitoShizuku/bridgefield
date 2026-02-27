# ターン時間(最小設定5秒)
execute if score $turn_time bf matches 100 run return run execute at @n[tag=opt.interact] at @n[type=text_display] run function lobby:settings/failed
execute if score $turn_time bf matches 200..6000 run scoreboard players remove $turn_time bf 100
execute if score $turn_time bf matches 7000.. run scoreboard players remove $turn_time bf 1000
execute as @n[tag=lobby.text.settings.turn_time,type=text_display] run function lobby:settings/lr_switch/turn_time/set_display
execute at @n[tag=opt.interact] at @n[type=text_display] run function lobby:settings/success_r