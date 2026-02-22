advancement revoke @s only lobby:setting_lc
tag @n[type=interaction,nbt={attack:{}}] add opt.interact

execute if entity @n[tag=opt.interact,tag=lobby.interact.settings.turn_time] run function lobby:settings/lr_switch/turn_time/l
execute if entity @n[tag=opt.interact,tag=lobby.interact.settings.ef] run function lobby:settings/lr_switch/ef/l