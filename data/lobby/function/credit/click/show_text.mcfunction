advancement revoke @s only lobby:credit/show_text
function lobby:credit/click/tellraw_me with entity @n[tag=lobby.credit.interact,type=interaction,tag=lobby.credit.interact.show_text,nbt={interaction:{}}] data
data remove entity @n[tag=lobby.credit.interact,type=interaction,tag=lobby.credit.interact.show_text,nbt={interaction:{}}] interaction