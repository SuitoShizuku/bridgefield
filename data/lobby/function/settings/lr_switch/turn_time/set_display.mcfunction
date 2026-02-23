scoreboard players operation $turn_time_sec bf = $turn_time bf
scoreboard players operation $turn_time_sec bf /= #20 bf
execute if score $turn_time bf matches ..59 run return run data modify entity @s text set value [{translate:"bf.second",fallback:"%s秒",with:[{score:{name:"$turn_time_sec",objective:"bf"}}]}]
scoreboard players operation $turn_time_min bf = $turn_time_sec bf
scoreboard players operation $turn_time_min bf /= $60 bf
scoreboard players operation $turn_time_sec bf %= $60 bf
data modify entity @s text set value [{translate:"bf.minute",fallback:"%s分",with:[{score:{name:"$turn_time_min",objective:"bf"}}]},{translate:"bf.second",fallback:"%s秒",with:[{score:{name:"$turn_time_sec",objective:"bf"}}]}]