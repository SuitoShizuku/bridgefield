# ゲーム終了直後に実行される処理

execute as @a run attribute @s movement_speed modifier remove false_turn
execute as @a run attribute @s jump_strength modifier remove false_turn
execute as @a run attribute @s entity_interaction_range modifier remove false_turn
execute as @a run attribute @s block_interaction_range modifier remove false_turn

scoreboard players set $now bf 1
function lobby:gen
bossbar set turn_timer_my visible false
bossbar set turn_timer_other visible false

execute as @a run function core:ingame/effect/debuff/burn/remove
execute as @a run function core:ingame/effect/debuff/frostbite/remove
execute as @a run function core:ingame/effect/debuff/blindness/remove

#爆発デコイ系のkill
kill @e[tag=ed]

function core:ingame/end/endroll