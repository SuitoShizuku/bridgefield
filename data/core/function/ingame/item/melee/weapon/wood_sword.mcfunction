# 火傷を移す
execute as @p[tag=attacker] unless entity @s[tag=burn] run return 0
tag @s add burn