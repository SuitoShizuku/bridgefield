execute as @p[tag=attacker] if function core:ingame/rc_ct run return 0
$scoreboard players set @p[tag=attacker] bf $(consumeMp)
execute as @p[tag=attacker] if function core:ingame/mp/use run return 0
$function core:ingame/item/consume/use/$(consumeId)