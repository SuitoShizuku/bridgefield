#爆発デコイ系のkill
kill @e[tag=ed]

#課金タグ削除
tag @a remove paid_item

#グロウグロウベーリーのエフェクト、tag削除
execute as @a[tag=glowglow_berries] run effect clear @s minecraft:glowing
tag @a remove glowglow_berries