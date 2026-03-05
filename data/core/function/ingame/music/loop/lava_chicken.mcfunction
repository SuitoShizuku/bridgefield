execute unless score @s bgm matches 1.. run tellraw @s {"translate":"bf.music.play",fallback:"[ %s ]を再生♪",with:[{"text":"Lava Chicken",color:gold,bold:true}]}
execute unless score @s bgm matches 1.. run playsound music_disc.lava_chicken player @s ~ ~100 ~ 100 1 1

execute unless score @s bgm matches 1.. run scoreboard players set @s bgm 2800
scoreboard players remove @s bgm 1