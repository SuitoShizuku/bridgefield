scoreboard players remove $stage bf 1
execute if score $stage bf matches ..0 run scoreboard players operation $stage bf = $stage.max bf
function lobby:settings/success_g
function lobby:settings/maps/monument