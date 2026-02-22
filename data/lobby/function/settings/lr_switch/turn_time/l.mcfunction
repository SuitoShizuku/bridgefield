# ターン時間(最小設定5秒)
execute if score $turn_time bf matches 100 run return run execute at @n[tag=opt.interact] run function lobby:settings/failed
execute if score $turn_time bf matches 200.. run scoreboard players remove $turn_time bf 100

execute at @n[tag=opt.interact] run function lobby:settings/success_r