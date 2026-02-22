# EFターン(最大設定1000)
execute if score $EF bf matches 1000 run return run execute at @n[tag=opt.interact] run function lobby:settings/failed
execute if score $EF bf matches 400..900 run scoreboard players add $EF bf 100
execute if score $EF bf matches 150..350 run scoreboard players add $EF bf 50
execute if score $EF bf matches 50..125 run scoreboard players add $EF bf 25
execute if score $EF bf matches 10..40 run scoreboard players add $EF bf 10

execute at @n[tag=opt.interact] run function lobby:settings/success_b