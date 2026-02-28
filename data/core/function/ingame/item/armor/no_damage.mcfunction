
$scoreboard players set $totalDMG bf $(damage)
$scoreboard players add $totalDMG bf $(trueDamage)
tellraw @a[tag=!blindness] ["\n",{\
    translate:"bf.chat.no_damage",fallback:"- %1$s の攻撃\n%2$s の体力値: %3$s → %4$s (ノーダメージ)",color:gray,\
    with:[{selector:"@p[tag=attacker]"},{selector:"@s"},{score:{name:"@s",objective:"status.hp"},color:dark_red},{score:{name:"@s",objective:"status.hp"},color:dark_red}],\
    hover_event:{action:"show_text",value:{translate:"bf.chat.damage.detail",fallback:"ダメージ: %1$s\n詳細:\n 防御可能ダメージ: %2$s\n 防御貫通ダメージ: %3$s\n 防御力:%4$s\n計算式:\n§n§3(%2$s§3-%4$s§3>0)+%3$s§3=%1$s",\
    with:[{score:{name:"$temp",objective:"defense"},color:dark_red,bold:true},{score:{name:"$DMG",objective:"bf"},color:yellow},{score:{name:"$trueDMG",objective:"bf"},color:gold},{score:{name:"$old_def",objective:"bf"},color:gray}]\
}}}]
execute unless entity @p[tag=punch.attacker] if entity @s[tag=def_break] run scoreboard players set @s defense 0