scoreboard players set $total status.hp 0
execute as @a run scoreboard players operation $total status.hp += @s status.hp
scoreboard players set $temp bf 0
execute as @a run scoreboard players add $temp bf 1
scoreboard players operation $temp status.hp /= $temp bf
execute if score @s status.hp <= $temp status.hp run return 5
return 0