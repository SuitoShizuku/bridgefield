tellraw @s ""
$tellraw @s [{translate:"a",fallback:"%1$s\n制作者: %2$s",with:[$(title),"$(credit)"]}]
tellraw @s ""
execute if score $stage bf matches 1 run function lobby:settings/maps/preview/tp/1
execute if score $stage bf matches 2 run function lobby:settings/maps/preview/tp/2
execute if score $stage bf matches 3 run function lobby:settings/maps/preview/tp/3
execute if score $stage bf matches 4 run function lobby:settings/maps/preview/tp/4