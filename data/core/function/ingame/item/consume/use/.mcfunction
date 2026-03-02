execute if function core:ingame/rc_ct run return 0
$scoreboard players set @s bf $(consumeMp)
execute if function core:ingame/mp/use run return 0
$function core:ingame/item/consume/use/$(consumeId)