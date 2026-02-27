#ロビーボタン右が押されると次のアイテム
execute if score $toggle iv matches 1 positioned -23 2 -5 unless score $button.interval.right iv matches 1.. if block -22 2 -5 #minecraft:buttons[powered=true] run function lobby:item_viewer/display/next
#ロビーボタン左が押されるの前のアイテム
execute if score $toggle iv matches 1 positioned -23 2 -5 unless score $button.interval.left iv matches 1.. if block -24 2 -5 #minecraft:buttons[powered=true] run function lobby:item_viewer/display/back



#item_displayを回転させる
execute as @n[type=item_display,tag=iv.item] at @s if score $toggle iv matches 1 run tp @s ~ ~ ~ ~1 ~
execute as @e[type=item_display,tag=iv.item.grow] at @s if score $toggle iv matches 1 run tp @s ~ ~ ~ ~0.5 ~

#ロビーのボタンが元に戻るとインターバルがリセット
execute if block -23 2 -5 #minecraft:buttons[powered=false] run scoreboard players set $button.interval iv 0
#ロビーのボタンが元に戻るとインターバルがリセット
execute if block -22 2 -5 #minecraft:buttons[powered=false] run scoreboard players set $button.interval.right iv 0
#ロビーのボタンが元に戻るとインターバルがリセット
execute if block -24 2 -5 #minecraft:buttons[powered=false] run scoreboard players set $button.interval.left iv 0

#意味はないけど常時実行で最大値設定　何かあったら変えてもok
# アイテムビューワーのid最大値
scoreboard players set $item.id.max iv 50

#back nextの色をインターバルが0であれば元に戻す(常時実行でいいのかは分からない)
execute as @n[type=text_display,tag=iv.text.back] if score $button.interval.left iv matches 0 run function lobby:item_viewer/text_color_back
execute as @n[type=text_display,tag=iv.text.next] if score $button.interval.right iv matches 0 run function lobby:item_viewer/text_color_back

#ボタン即戻し処理 ボタンの動きが見れないので2tickにする
execute if score $button.interval iv matches 1 run setblock -23 2 -5 stone_button[face=floor,facing=north]
execute if score $button.interval.right iv matches 1 run scoreboard players add $button.interval.right.timer iv 1
execute if score $button.interval.left iv matches 1 run scoreboard players add $button.interval.left.timer iv 1

execute if score $button.interval.right.timer iv matches 2.. run setblock -22 2 -5 warped_button[face=floor,facing=north]
execute if score $button.interval.left.timer iv matches 2.. run setblock -24 2 -5 crimson_button[face=floor,facing=north]

execute if score $button.interval.right.timer iv matches 2.. run scoreboard players set $button.interval.right.timer iv 0
execute if score $button.interval.left.timer iv matches 2.. run scoreboard players set $button.interval.left.timer iv 0

#interactionを見ているとparticle出る
execute as @a at @s if predicate lobby:looking_at_interaction_iv if entity @n[type=interaction,tag=iv,distance=..5] run particle minecraft:glow -23 1.8 -6 0 0 0 0 1 normal @s