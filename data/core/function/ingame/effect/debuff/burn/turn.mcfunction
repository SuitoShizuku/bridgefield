# HP減算
scoreboard players remove @s status.hp 1
function core:ingame/hplink
damage @s 0.1 generic
# 結果出力
tellraw @s [{translate:"bf.chat.damage.burn",fallback:"火傷ダメージ → 1ダメージ!(残り%sHP)",with:[{score:{name:"@s",objective:"status.hp"},color:red}]}]
# 死んでないかチェック
function core:ingame/deathcheck

particle minecraft:small_flame ~ ~1 ~ 0.2 0.4 0.2 0.05 20 normal @a