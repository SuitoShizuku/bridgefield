#現在のitem.idから樽の座標、スロットidを計算
scoreboard players operation $offset iv = $item.id iv
scoreboard players operation $slot iv = $item.id iv
scoreboard players set $temp iv 27
scoreboard players operation $offset iv /= $temp iv
scoreboard players operation $slot iv %= $temp iv

#計算した値をマクロ出来る様にストレージへ代入
execute store result storage bf:iv barrel.slot int 1 run scoreboard players get $slot iv
execute store result storage bf:iv barrel.offset int 1 run scoreboard players get $offset iv

#代入した値で樽から情報を取得する
function lobby:item_viewer/display/item_display/id_get with storage bf:iv barrel

#アイテムディスプレイに反映せる
function lobby:item_viewer/display/item_display/id_macro with storage bf:iv

#テキストにどう書かれてるかで通常アイテムか追加アイテムかを区別し、それに合わせた方に切り替える※なぜか一度デフォルトアイテムになると名前が追加アイテムに戻らない
#execute unless data storage bf:iv name.fallback run function lobby:item_viewer/display/text_display/id_macro_default_item with storage bf:iv
#意味ないけどfunctionのままに
function lobby:item_viewer/display/text_display/id_macro
#id text_display更新
data merge entity @n[type=minecraft:text_display,tag=iv.text.id] {text:{score:{objective:"iv",name:"$item.id"}}}