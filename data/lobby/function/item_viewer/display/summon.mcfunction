#text_display召喚
summon minecraft:item_display -23 3 -6 {Tags:["iv","iv.item"]}

#itemのidを初期化
execute unless score $item_id iv matches 0.. run scoreboard players set $item_id iv 1