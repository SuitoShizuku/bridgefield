execute at @n[tag=lobby.text.map.subtext.2,type=text_display] run function lobby:settings/success_b
tellraw @s ""
$tellraw @s [{translate:"a",fallback:"%1$s\n制作者: %2$s",with:[$(title),"$(credit)"]}]
execute if score $stage bf matches 6 run tellraw @s [{translate:"bf.resourcepack.plz",fallback:"このマップはリソースパックの導入を推奨します。"}]
tellraw @s ""
execute if score $stage bf matches 1 run function lobby:settings/maps/preview/tp/1
execute if score $stage bf matches 2 run function lobby:settings/maps/preview/tp/2
execute if score $stage bf matches 3 run function lobby:settings/maps/preview/tp/3
execute if score $stage bf matches 4 run function lobby:settings/maps/preview/tp/4
execute if score $stage bf matches 5 run function lobby:settings/maps/preview/tp/5
execute if score $stage bf matches 6 run function lobby:settings/maps/preview/tp/6