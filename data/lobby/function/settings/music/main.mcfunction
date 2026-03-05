execute as @e[type=marker,tag=music_selector,tag=!on] at @s if entity @a[distance=..5] run function lobby:settings/music/music_select/summon with storage bf:ms
execute as @e[type=marker,tag=music_selector,tag=on] at @s unless entity @a[distance=..5] run function lobby:settings/music/music_select/unsummon

execute as @e[tag=ms,tag=rotation] at @s run tp @s ~ ~ ~ ~1 ~
execute as @a at @s run function lobby:settings/music/music_select/particle