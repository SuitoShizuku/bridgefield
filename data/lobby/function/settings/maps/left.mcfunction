execute if score $stage bf matches ..1 run return run function lobby:settings/failed
scoreboard players remove $stage bf 1
function lobby:settings/success_g
function lobby:settings/maps/set_monument with storage bf:maps