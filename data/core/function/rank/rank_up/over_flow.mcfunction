execute if score @s rd.settings.notification.levelup matches 1 run tellraw @s {"text":"※これ以上ランクは上がりません! Max100",color:red,bold:true}
execute if score @s rd.settings.notification.levelup matches 1 run playsound block.note_block.bass player @s ~ ~ ~ 1 1 1
scoreboard players set @s rank.xp 0