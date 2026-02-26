# 最大チーム数(8)
execute if score $max_teams bf matches 8 run return run execute at @n[tag=opt.interact] run function lobby:settings/failed
scoreboard players add $max_teams bf 1
execute as @n[tag=lobby.text.settings.teams,type=text_display] run function lobby:settings/lr_switch/teams/set_display
execute at @n[tag=opt.interact] run function lobby:settings/success_b