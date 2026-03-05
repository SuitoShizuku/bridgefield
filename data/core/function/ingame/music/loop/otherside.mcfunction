execute unless score @s bgm matches 1.. run tellraw @s {"translate":"bf.music.play",fallback:"[ %s ]を再生♪",with:[{"text":"otherside",color:gold,bold:true}]}
execute unless score @s bgm matches 1.. run playsound music_disc.otherside player @s ~ ~100 ~ 100 1 1

execute unless score @s bgm matches 1.. run scoreboard players set @s bgm 3700

scoreboard players remove @s bgm 1