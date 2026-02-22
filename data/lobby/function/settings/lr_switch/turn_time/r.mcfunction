# ターン時間(最大設定10分)
execute if score $turn_time bf matches 12000 run return run execute at @n[tag=opt.interact] run function lobby:settings/failed
execute if score $turn_time bf matches ..11000 run scoreboard players add $turn_time bf 100

function lobby:settings/success_b