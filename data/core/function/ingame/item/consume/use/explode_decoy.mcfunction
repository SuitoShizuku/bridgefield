#デコイ召喚
summon minecraft:villager ~ ~ ~ {NoAI:1b,Tags:[ed]}

#爆発までのカウントを設定
execute as @n[tag=ed] at @s unless score @s ed_random matches 0.. store result score @s ed_random run random value 1..10