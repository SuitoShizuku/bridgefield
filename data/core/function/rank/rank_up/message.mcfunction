scoreboard players operation $temp rank = @s rank
scoreboard players add $temp rank 1
tellraw @s [{"text":"ランクアップ！ ",color:gold,bold:true},{"score":{objective:rank,name:"$temp"},color:green,bold:true},{"text":"↑",color:yellow,bold:true}]
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 0.1 1
particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 1 1000 normal @s