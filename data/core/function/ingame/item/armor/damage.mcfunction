# ダメージを代入
$scoreboard players set $temp defense $(damage)
# ダメージが防御可能かつ、攻撃者が武器持ちなら装備を破壊
execute if score $temp defense matches 1.. unless entity @p[tag=punch.attacker] run function core:ingame/item/armor/armor_break
# 防御力を引く
scoreboard players operation $temp defense -= @s defense
execute if score $temp defense matches ..0 run scoreboard players set $temp defense 0
# 貫通ダメージ分をダメージに加算
$scoreboard players add $temp defense $(trueDamage)
# 最終ダメージが0以下ならノーダメージとして処理して切り返す
$execute if score $temp defense matches ..0 run return run function core:ingame/item/armor/no_damage {damage:"$(damage)",trueDamage:"$(trueDamage)"}
# 体力を処理
scoreboard players operation @s status.hp -= $temp defense
function core:ingame/hplink
# 結果出力
$scoreboard players set $totalDMG bf $(damage)
$scoreboard players add $totalDMG bf $(trueDamage)
tellraw @a [{translate:"bf.game.damage",fallback:"%1$s攻撃:%3$s→%2$s防御:%4$s = %5$s ダメージ!(残り%6$sHP)",with:[{selector:"@p[tag=attacker]"},{selector:"@s"},{"score":{name:"$totalDMG",objective:"bf"},color:dark_red},{"score":{"name":"@s",objective:"defense"},color:gray},{"score":{name:"$temp",objective:"defense"},color:red},{score:{name:"@s[tag=victim]",objective:"status.hp"},color:red}]}]
execute unless entity @p[tag=punch.attacker] run scoreboard players set @s defense 0
# 死んでないかチェック
function core:ingame/deathcheck