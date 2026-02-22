#耐久値-1
scoreboard players remove @s durability 1

#減少済みタグを与える
tag @s add durability.damaged

# 耐久値をテキストディスプレイに反映
execute as @n[tag=game.bridge.durability,distance=..1,type=text_display] run data modify entity @s text set value [{translate:"bf.bridge.durability",fallback:"耐久値: %s",with:[{score:{name:"@n[tag=game.bridge.durability,type=marker]",objective:"durability"}}]}]