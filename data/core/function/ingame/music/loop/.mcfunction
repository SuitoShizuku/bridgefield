execute if score @s bgm_id matches 100 store result score @s bgm_id_random run random value 1..11
execute if score @s bgm_id matches 1 run function core:ingame/music/loop/otherside
execute if score @s bgm_id matches 2 run function core:ingame/music/loop/13
execute if score @s bgm_id matches 3 run function core:ingame/music/loop/cat
execute if score @s bgm_id matches 4 run function core:ingame/music/loop/creator
execute if score @s bgm_id matches 5 run function core:ingame/music/loop/precipice
execute if score @s bgm_id matches 6 run function core:ingame/music/loop/tears
execute if score @s bgm_id matches 7 run function core:ingame/music/loop/lava_chicken
execute if score @s bgm_id matches 8 run function core:ingame/music/loop/relic
execute if score @s bgm_id matches 9 run function core:ingame/music/loop/11
execute if score @s bgm_id matches 10 run function core:ingame/music/loop/wait
execute if score @s bgm_id matches 11 run function core:ingame/music/loop/pigstep
execute if score @s bgm_id matches 100 if score @s bgm_id_random matches 1 run function core:ingame/music/loop/otherside
execute if score @s bgm_id matches 100 if score @s bgm_id_random matches 2 run function core:ingame/music/loop/13
execute if score @s bgm_id matches 100 if score @s bgm_id_random matches 3 run function core:ingame/music/loop/cat
execute if score @s bgm_id matches 100 if score @s bgm_id_random matches 4 run function core:ingame/music/loop/creator
execute if score @s bgm_id matches 100 if score @s bgm_id_random matches 5 run function core:ingame/music/loop/precipice
execute if score @s bgm_id matches 100 if score @s bgm_id_random matches 6 run function core:ingame/music/loop/tears
execute if score @s bgm_id matches 100 if score @s bgm_id_random matches 7 run function core:ingame/music/loop/lava_chicken
execute if score @s bgm_id matches 100 if score @s bgm_id_random matches 8 run function core:ingame/music/loop/relic
execute if score @s bgm_id matches 100 if score @s bgm_id_random matches 9 run function core:ingame/music/loop/11
execute if score @s bgm_id matches 100 if score @s bgm_id_random matches 10 run function core:ingame/music/loop/wait
execute if score @s bgm_id matches 100 if score @s bgm_id_random matches 11 run function core:ingame/music/loop/pigstep

#musicタグが付いてるとデフォルト音楽系(デフォ)を止める
stopsound @s music