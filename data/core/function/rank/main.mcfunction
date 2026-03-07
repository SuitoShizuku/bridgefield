#init
execute as @a[tag=!rd_init] at @s run function core:rank/init

#ランクアップ
execute as @a at @s run function core:rank/rank_up/check