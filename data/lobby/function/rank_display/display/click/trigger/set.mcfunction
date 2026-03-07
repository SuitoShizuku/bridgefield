scoreboard players enable @a rd.settings.trigger
function lobby:rank_display/display/click/trigger/check
execute as @a at @s if score @s rd.settings.trigger matches 1.. run scoreboard players reset @a rd.settings.trigger