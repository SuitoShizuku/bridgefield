execute if score $max_teams bf matches 2..7 as @n[tag=fence_motion.white] at @s run tp @s ~ 1.00 ~
execute if score $max_teams bf matches 2..6 as @n[tag=fence_motion.cyan] at @s run tp @s ~ 1.00 ~
execute if score $max_teams bf matches 2..5 as @n[tag=fence_motion.pink] at @s run tp @s ~ 1.00 ~
execute if score $max_teams bf matches 2..4 as @n[tag=fence_motion.orange] at @s run tp @s ~ 1.00 ~
execute if score $max_teams bf matches 2..3 as @n[tag=fence_motion.green] at @s run tp @s ~ 1.00 ~
execute if score $max_teams bf matches 2 as @n[tag=fence_motion.yellow] at @s run tp @s ~ 1.00 ~
execute if score $max_teams bf matches 2..7 as @n[tag=fence_motion.white] at @s run fill ~2 ~2 ~ ~ ~ ~ barrier
execute if score $max_teams bf matches 2..6 as @n[tag=fence_motion.cyan] at @s run fill ~2 ~2 ~ ~ ~ ~ barrier
execute if score $max_teams bf matches 2..5 as @n[tag=fence_motion.pink] at @s run fill ~2 ~2 ~ ~ ~ ~ barrier
execute if score $max_teams bf matches 2..4 as @n[tag=fence_motion.orange] at @s run fill ~2 ~2 ~ ~ ~ ~ barrier
execute if score $max_teams bf matches 2..3 as @n[tag=fence_motion.green] at @s run fill ~2 ~2 ~ ~ ~ ~ barrier
execute if score $max_teams bf matches 2 as @n[tag=fence_motion.yellow] at @s run fill ~2 ~2 ~ ~ ~ ~ barrier

execute unless score $max_teams bf matches 2..7 as @n[tag=fence_motion.white] at @s run tp @s ~ 4.80 ~
execute unless score $max_teams bf matches 2..6 as @n[tag=fence_motion.cyan] at @s run tp @s ~ 4.80 ~
execute unless score $max_teams bf matches 2..5 as @n[tag=fence_motion.pink] at @s run tp @s ~ 4.80 ~
execute unless score $max_teams bf matches 2..4 as @n[tag=fence_motion.orange] at @s run tp @s ~ 4.80 ~
execute unless score $max_teams bf matches 2..3 as @n[tag=fence_motion.green] at @s run tp @s ~ 4.80 ~
execute unless score $max_teams bf matches 2 as @n[tag=fence_motion.yellow] at @s run tp @s ~ 4.80 ~
execute unless score $max_teams bf matches 2..7 as @n[tag=fence_motion.white] at @s run fill ~2 ~ ~ ~ ~-3 ~ air
execute unless score $max_teams bf matches 2..6 as @n[tag=fence_motion.cyan] at @s run fill ~2 ~ ~ ~ ~-3 ~ air
execute unless score $max_teams bf matches 2..5 as @n[tag=fence_motion.pink] at @s run fill ~2 ~ ~ ~ ~-3 ~ air
execute unless score $max_teams bf matches 2..4 as @n[tag=fence_motion.orange] at @s run fill ~2 ~ ~ ~ ~-3 ~ air
execute unless score $max_teams bf matches 2..3 as @n[tag=fence_motion.green] at @s run fill ~2 ~ ~ ~ ~-3 ~ air
execute unless score $max_teams bf matches 2 as @n[tag=fence_motion.yellow] at @s run fill ~2 ~ ~ ~ ~-3 ~ air

execute if score $max_teams bf matches 2..7 as @n[tag=fence_motion.white] at @s run tp @a[dx=2,dz=2,dy=2] ~1 1.0 0
execute if score $max_teams bf matches 2..6 as @n[tag=fence_motion.cyan] at @s run tp @a[dx=2,dz=2,dy=2] ~1 1.0 0
execute if score $max_teams bf matches 2..5 as @n[tag=fence_motion.pink] at @s run tp @a[dx=2,dz=2,dy=2] ~1 1.0 0
execute if score $max_teams bf matches 2..4 as @n[tag=fence_motion.orange] at @s run tp @a[dx=2,dz=2,dy=2] ~1 1.0 0
execute if score $max_teams bf matches 2..3 as @n[tag=fence_motion.green] at @s run tp @a[dx=2,dz=2,dy=2] ~1 1.0 0
execute if score $max_teams bf matches 2 as @n[tag=fence_motion.yellow] at @s run tp @a[dx=2,dz=2,dy=2] ~1 1.0 0