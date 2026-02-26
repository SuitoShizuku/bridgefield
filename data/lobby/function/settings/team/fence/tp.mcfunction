execute if score $max_teams bf matches 2..7 as @n[tag=fence_motion.white] at @s run tp @s ~ 4.8 ~
execute if score $max_teams bf matches 2..6 as @n[tag=fence_motion.cyan] at @s run tp @s ~ 4.8 ~
execute if score $max_teams bf matches 2..5 as @n[tag=fence_motion.pink] at @s run tp @s ~ 4.8 ~
execute if score $max_teams bf matches 2..4 as @n[tag=fence_motion.orange] at @s run tp @s ~ 4.8 ~
execute if score $max_teams bf matches 2..3 as @n[tag=fence_motion.green] at @s run tp @s ~ 4.8 ~
execute if score $max_teams bf matches 2 as @n[tag=fence_motion.yellow] at @s run tp @s ~ 4.8 ~

execute unless score $max_teams bf matches 2..7 as @n[tag=fence_motion.white] at @s run tp @s ~ 1.0 ~
execute unless score $max_teams bf matches 2..6 as @n[tag=fence_motion.cyan] at @s run tp @s ~ 1.0 ~
execute unless score $max_teams bf matches 2..5 as @n[tag=fence_motion.pink] at @s run tp @s ~ 1.0 ~
execute unless score $max_teams bf matches 2..4 as @n[tag=fence_motion.orange] at @s run tp @s ~ 1.0 ~
execute unless score $max_teams bf matches 2..3 as @n[tag=fence_motion.green] at @s run tp @s ~ 1.0 ~
execute unless score $max_teams bf matches 2 as @n[tag=fence_motion.yellow] at @s run tp @s ~ 1.0 ~