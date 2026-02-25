#デコイ召喚
summon minecraft:villager ~ ~ ~ {NoAI:1b,Tags:[ed],Age:-2147483648,Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:tnt"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.5f,0.5f,0.5f],translation:[-0.25f,-0.5f,-0.25f]},Tags:[ed],Passengers:[{id:"minecraft:text_display",text:{"text":"僕は爆発デコイだ！"},Tags:[ed],billboard:vertical}],Invulnerable:1b}]}

#爆発までのカウントを設定
execute as @n[tag=ed] at @s unless score @s ed_random matches 0.. store result score @s ed_random run random value 2..10