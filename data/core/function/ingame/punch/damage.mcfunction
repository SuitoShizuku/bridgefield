tag @p[tag=punch.victim] add victim
tag @p[tag=punch.attacker] add attacker
function core:ingame/item/armor/damage {damage:"1",trueDamage:"0"}
tag @p[tag=punch.victim] remove victim
tag @p[tag=punch.attacker] remove attacker
execute as @p[tag=punch.attacker] run function core:ingame/turn/end