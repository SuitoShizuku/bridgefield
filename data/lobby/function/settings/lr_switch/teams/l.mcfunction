# 最小チーム数(2)
execute if score $max_teams bf matches 2 run return run execute at @n[tag=opt.interact] run function lobby:settings/failed
scoreboard players remove $max_teams bf 1
execute as @n[tag=lobby.text.settings.teams,type=text_display] run function lobby:settings/lr_switch/teams/set_display
execute at @n[tag=opt.interact] run function lobby:settings/success_r
function lobby:settings/team/fence/tp
function lobby:settings/team/check

execute if score $max_teams bf matches 2 run playsound minecraft:block.grindstone.use block @a 15.5 3.0 -1.5 1 0.2
execute if score $max_teams bf matches 3 run playsound minecraft:block.grindstone.use block @a 15.5 3.0 1.5 1 0.2
execute if score $max_teams bf matches 4 run playsound minecraft:block.grindstone.use block @a 19.5 3.0 -1.5 1 0.2
execute if score $max_teams bf matches 5 run playsound minecraft:block.grindstone.use block @a 19.5 3.0 1.5 1 0.2
execute if score $max_teams bf matches 6 run playsound minecraft:block.grindstone.use block @a 23.5 3.0 -1.5 1 0.2
execute if score $max_teams bf matches 7 run playsound minecraft:block.grindstone.use block @a 23.5 3.0 1.5 1 0.2