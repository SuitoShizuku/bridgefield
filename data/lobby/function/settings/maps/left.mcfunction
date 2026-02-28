scoreboard players remove $stage bf 1
execute if score $stage bf matches ..0 run scoreboard players operation $stage bf = $stage.max bf
execute at @n[tag=lobby.text.map.subtext.1,type=text_display] run function lobby:settings/success_g
function lobby:settings/maps/monument