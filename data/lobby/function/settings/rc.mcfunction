advancement revoke @s only lobby:setting_rc
tag @n[type=interaction,nbt={interaction:{}}] add opt.interact

execute if entity @n[tag=opt.interact,tag=lobby.interact.settings.turn_time] run function lobby:settings/lr_switch/turn_time/r
execute if entity @n[tag=opt.interact,tag=lobby.interact.settings.ef] run function lobby:settings/lr_switch/ef/r