#ロビーボタンが押されるとビューワー表示のon_off
execute unless score $button.interval iv matches 1.. if block -23 2 -5 #minecraft:buttons[powered=true] run function lobby:item_viewer/toggle
#ロビーボタン右が押されると次のアイテム
execute positioned -23 2 -5 unless score $button.interval.right iv matches 1.. if block -22 2 -5 #minecraft:buttons[powered=true] run function lobby:item_viewer/display/next
#ロビーボタン左が押されるの前のアイテム
execute positioned -23 2 -5 unless score $button.interval.left iv matches 1.. if block -24 2 -5 #minecraft:buttons[powered=true] run function lobby:item_viewer/display/back

#switch実行
execute positioned -23 2 -5 if score $switch.run iv matches 1.. run function lobby:item_viewer/switch

#item_displayを回転させる
execute as @e[type=item_display,tag=iv.item] at @s if score $toggle iv matches 1 run tp @s ~ ~ ~ ~1 ~

#ロビーのボタンが元に戻るとインターバルがリセット
execute if block -23 2 -5 #minecraft:buttons[powered=false] run scoreboard players set $button.interval iv 0
#ロビーのボタンが元に戻るとインターバルがリセット
execute if block -22 2 -5 #minecraft:buttons[powered=false] run scoreboard players set $button.interval.right iv 0
#ロビーのボタンが元に戻るとインターバルがリセット
execute if block -24 2 -5 #minecraft:buttons[powered=false] run scoreboard players set $button.interval.left iv 0

#意味はないけど常時実行で最大値設定　何かあったら変えてもok
# アイテムビューワーのid最大値
scoreboard players set $item.id.max iv 12

#back nextの色をインターバルが0であれば元に戻す(常時実行でいいのかは分からない)
execute as @e[type=text_display,tag=iv.text.next] if score $button.interval.right iv matches 0 if data entity @s {text:{"text":"Next",color:"red"}} run data merge entity @s {text:{"text":"Next",color:"white"}}
execute as @e[type=text_display,tag=iv.text.back] if score $button.interval.left iv matches 0 if data entity @s {text:{"text":"Back",color:"red"}} run data merge entity @s {text:{"text":"Back",color:"white"}}
