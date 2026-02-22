
$scoreboard players set $totalDMG bf $(damage)
$scoreboard players add $totalDMG bf $(trueDamage)
tellraw @a [{translate:"bf.game.damage",fallback:"%1$s攻撃:%3$s→%2$s防御:%4$s = %5$s §aノーダメージ!§r(残り%6$sHP)",with:[{selector:"@p[tag=attacker]"},{selector:"@p[tag=victim]"},{"score":{name:"$totalDMG",objective:"bf"},color:dark_red},{"score":{"name":"@p[tag=victim]",objective:"defense"},color:gray},{"score":{name:"$temp",objective:"defense"},color:red},{score:{name:"@s[tag=victim]",objective:"status.hp"},color:red}]}]
execute unless entity @p[tag=punch.attacker] run scoreboard players set @s defense 0