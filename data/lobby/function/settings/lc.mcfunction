advancement revoke @s only lobby:setting_lc
tag @n[type=interaction,nbt={attack:{}},tag=lobby.interact.settings] add opt.interact

execute if entity @n[tag=opt.interact,tag=lobby.interact.settings.teams] run function lobby:settings/lr_switch/teams/l
execute if entity @n[tag=opt.interact,tag=lobby.interact.settings.turn_time] run function lobby:settings/lr_switch/turn_time/l
execute if entity @n[tag=opt.interact,tag=lobby.interact.settings.ef] run function lobby:settings/lr_switch/ef/l
execute if entity @n[tag=opt.interact,tag=lobby.interact.settings.day] run function lobby:settings/toggle/day/
execute if entity @n[tag=opt.interact,tag=lobby.interact.settings.gamemode] run function lobby:settings/toggle/gamemode/
execute if entity @n[tag=opt.interact,tag=lobby.interact.settings.treasure] run function lobby:settings/toggle/treasure/
execute if entity @n[tag=opt.interact,tag=lobby.interact.settings.init] run function lobby:settings/toggle/initialize/

execute as @n[tag=opt.interact] run function lobby:settings/init