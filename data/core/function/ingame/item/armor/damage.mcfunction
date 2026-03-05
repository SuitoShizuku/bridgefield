# ダメージを代入
$scoreboard players set $temp defense $(damage)
# 竹槍
scoreboard players set $temp bf 0
execute if items entity @p[tag=attacker,tag=true_turn] weapon.mainhand *[custom_data~{"weaponId":"bamboo_spear"}] store result score $temp bf run function core:ingame/item/melee/weapon/bamboo_spear/
scoreboard players operation $temp defense += $temp bf
# 金剣
scoreboard players set $temp bf 0
execute if items entity @p[tag=attacker,tag=true_turn] weapon.mainhand *[custom_data~{"weaponId":"golden_sword"}] store result score $temp bf run random value 0..7
scoreboard players operation $temp defense += $temp bf
# ダメージが防御可能かつ、攻撃者が武器持ちなら装備を破壊
execute if score $temp defense matches 1.. unless entity @p[tag=punch.attacker] run function core:ingame/item/armor/armor_break
# 防御力を引く
scoreboard players operation $old_def bf = @s defense
scoreboard players operation $temp defense -= @s defense
execute if score $temp defense matches ..0 run scoreboard players set $temp defense 0
# 貫通ダメージ分をダメージに加算
$scoreboard players add $temp defense $(trueDamage)
# 最終ダメージが0以下ならノーダメージとして処理して切り返す
$execute if score $temp defense matches ..0 run return run function core:ingame/item/armor/no_damage {damage:"$(damage)",trueDamage:"$(trueDamage)"}
# 体力を処理
scoreboard players operation $old_health bf = @s status.hp
scoreboard players operation @s status.hp -= $temp defense
function core:ingame/hplink
# 結果出力
$scoreboard players set $DMG bf $(damage)
$scoreboard players set $trueDMG bf $(trueDamage)
tellraw @a[tag=!blindness] ["\n",{\
    translate:"bf.chat.damage",fallback:"- %1$s の攻撃\n%2$s の体力値: %3$s → %4$s",color:gray,\
    with:[{selector:"@p[tag=attacker]"},{selector:"@s"},{score:{name:"$old_health",objective:"bf"},color:dark_red},{score:{name:"@s",objective:"status.hp"},color:dark_red}],\
    hover_event:{action:"show_text",value:{translate:"bf.chat.damage.detail",fallback:"ダメージ: %1$s\n詳細:\n 防御可能ダメージ: %2$s\n 防御貫通ダメージ: %3$s\n 防御力:%4$s\n計算式:\n§n§3(%2$s§3-%4$s§3>0)+%3$s§3=%1$s",\
    with:[{score:{name:"$temp",objective:"defense"},color:dark_red,bold:true},{score:{name:"$DMG",objective:"bf"},color:yellow},{score:{name:"$trueDMG",objective:"bf"},color:gold},{score:{name:"$old_def",objective:"bf"},color:gray}]\
}}}]
tellraw @p[tag=blindness,tag=true_turn] ["\n",{\
    translate:"bf.chat.damage",fallback:"- %1$s の攻撃\n%2$s の体力値: %3$s → %4$s",color:gray,\
    with:[{selector:"@p[tag=attacker]"},{selector:"@s"},{score:{name:"$old_health",objective:"bf"},color:dark_red},{score:{name:"@s",objective:"status.hp"},color:dark_red}],\
    hover_event:{action:"show_text",value:{translate:"bf.chat.damage.detail",fallback:"ダメージ: %1$s\n詳細:\n 防御可能ダメージ: %2$s\n 防御貫通ダメージ: %3$s\n 防御力:%4$s\n計算式:\n§n§3(%2$s§3-%4$s§3>0)+%3$s§3=%1$s",\
    with:[{score:{name:"$temp",objective:"defense"},color:dark_red,bold:true},{score:{name:"$DMG",objective:"bf"},color:yellow},{score:{name:"$trueDMG",objective:"bf"},color:gold},{score:{name:"$old_def",objective:"bf"},color:gray}]\
}}}]
execute unless entity @p[tag=punch.attacker] if entity @s[tag=def_break] run scoreboard players set @s defense 0
tag @s remove def_break
# 死んでないかチェック
function core:ingame/deathcheck