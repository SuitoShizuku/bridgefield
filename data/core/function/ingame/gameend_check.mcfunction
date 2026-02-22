# 生存チーム数をカウントし、2チーム以上であれば0を返す
# 1チーム、または0チームであれば1を返す
scoreboard players set $team_count bf 0

execute if entity @a[team=player.red] run scoreboard players add $team_count bf 1
execute if entity @a[team=player.blue] run scoreboard players add $team_count bf 1
execute if entity @a[team=player.yellow] run scoreboard players add $team_count bf 1
execute if entity @a[team=player.green] run scoreboard players add $team_count bf 1
execute if entity @a[team=player.orange] run scoreboard players add $team_count bf 1
execute if entity @a[team=player.pink] run scoreboard players add $team_count bf 1
execute if entity @a[team=player.cyan] run scoreboard players add $team_count bf 1
execute if entity @a[team=player.white] run scoreboard players add $team_count bf 1
execute unless score $team_count bf matches 1 run return 0


return 1