execute unless score $totalDMG bf matches 1.. run return run tellraw @p[tag=true_turn,tag=!blindness] [{translate:"bf.chat.effect.fail",fallback:"%sの付与 - 失敗",with:[{translate:"bf.effects.burn",fallback:"§c火傷"}]}]
execute unless entity @s[tag=frostbite] run return run function core:ingame/effect/debuff/burn/add
scoreboard players operation @s status.hp -= $totalDMG bf
tellraw @a[tag=!blindness] [{translate:"bf.chat.damage.melt",fallback:"§c火傷§rと§9凍傷§r → §6%1$s溶解ダメージ!§r(残り%2$sHP)",with:[{score:{name:"$totalDMG",objective:"bf"}},{score:{name:"@s",objective:"status.hp"},color:red}]}]
tellraw @p[tag=blindness,tag=true_turn] [{translate:"bf.chat.damage.melt",fallback:"§c火傷§rと§9凍傷§r → §6%1$s溶解ダメージ!§r(残り%2$sHP)",with:[{score:{name:"$totalDMG",objective:"bf"}},{score:{name:"@s",objective:"status.hp"},color:red}]}]
function core:ingame/effect/debuff/frostbite/remove

# tag @s add burn

# tellraw @s {"translate":bf.item.distant.fire_ball.use,fallback:"%1$sになってしまった！",with:[{"text":"火傷",color:red,bold:true}]}