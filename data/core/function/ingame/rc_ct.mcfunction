execute unless score @s rc_ct matches -2147483648..2147483647 run scoreboard players set @s rc_ct 0
# ctがあれば
execute if score @s rc_ct matches 1.. run return 1
# ctがなければ
scoreboard players set @s rc_ct 15
return 0