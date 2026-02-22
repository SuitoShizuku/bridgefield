# EFターン(最小設定10T)
execute if score $EF bf matches 10 run return run execute at @n[tag=opt.interact] run function lobby:settings/failed
execute if score $EF bf matches 20..50 run scoreboard players remove $EF bf 10
execute if score $EF bf matches 75..150 run scoreboard players remove $EF bf 25
execute if score $EF bf matches 200..400 run scoreboard players remove $EF bf 50
execute if score $EF bf matches 500..1000 run scoreboard players remove $EF bf 100

execute at @n[tag=opt.interact] run function lobby:settings/success_r