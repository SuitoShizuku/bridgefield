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
execute as @e[type=text_display,tag=iv.text.back] if score $button.interval.left iv matches 0 run function lobby:item_viewer/text_color_back
execute as @e[type=text_display,tag=iv.text.next] if score $button.interval.right iv matches 0 run function lobby:item_viewer/text_color_back

#interactionクリック検知
execute as @e[type=interaction,tag=iv] at @s if data entity @s {interaction:{}} run function lobby:item_viewer/description/executor_check with entity @s interaction
#ここで途中　なんかfunction lobby:item_viewer/description/text with entity @n[type=interaction,tag=iv] interactionだと動くのに↑だと動かなくて悲しい！多分↑のexecuteに問題ある！
#NBT削除
execute as @e[type=interaction,tag=iv] at @s if data entity @s {interaction:{}} run data remove entity @s interaction

#ボタン即戻し
execute if score $button.interval iv matches 1 run setblock -23 2 -5 stone_button[face=floor,facing=north]
execute if score $button.interval.right iv matches 1 run setblock -22 2 -5 warped_button[face=floor,facing=north]
execute if score $button.interval.left iv matches 1 run setblock -24 2 -5 crimson_button[face=floor,facing=north]

#interactionを見ているとparticle出る
execute as @a at @s if predicate lobby:looking_at_interaction_iv if entity @e[type=interaction,tag=iv,distance=..5] run particle minecraft:glow -23 1.8 -6 0 0 0 0 1 normal @s