scoreboard players add $stage bf 1
execute if score $stage.max bf < $stage bf run scoreboard players set $stage bf 1
execute at @n[tag=lobby.text.map.subtext.3,type=text_display] run function lobby:settings/success_g
function lobby:settings/maps/monument