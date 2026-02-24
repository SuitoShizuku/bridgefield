scoreboard players operation $offset iv = $item_id iv
scoreboard players operation $slot iv = $item_id iv
scoreboard players set $temp iv 27
scoreboard players operation $offset iv /= $temp iv
scoreboard players operation $slot iv %= $temp iv
execute store result storage bf:iv barrel.slot int 1 run scoreboard players get $slot iv
execute store result storage bf:iv barrel.offset int 1 run scoreboard players get $offset iv
function lobby:item_viewer/display/item_display/id_get with storage bf:iv barrel
function lobby:item_viewer/display/item_display/id_macro with storage bf:iv
function lobby:item_viewer/display/text_display/id_macro with storage bf:iv