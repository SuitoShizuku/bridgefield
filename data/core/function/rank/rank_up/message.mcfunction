scoreboard players operation $temp rank = @s rank
scoreboard players add $temp rank 1
tellraw @s [{"text":"ランクアップ！ ",color:gold,bold:true},{"score":{objective:rank,name:"$temp"},color:green,bold:true},{"text":"↑",color:yellow,bold:true}]