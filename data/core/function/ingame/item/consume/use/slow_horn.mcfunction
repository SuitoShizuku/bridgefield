#特殊効果
execute as @p[tag=attacker,team=player.blue] at @s run tag @a[team=!player.blue,distance=..16] add slow_norn_now
execute as @p[tag=attacker,team=player.red] at @s run tag @a[team=!player.red,distance=..16] add slow_norn_now
execute as @p[tag=attacker,team=player.green] at @s run tag @a[team=!player.green,distance=..16] add slow_norn_now
execute as @p[tag=attacker,team=player.yellow] at @s run tag @a[team=!player.yellow,distance=..16] add slow_norn_now
execute as @p[tag=attacker,team=player.white] at @s run tag @a[team=!player.white,distance=..16] add slow_norn_now
execute as @p[tag=attacker,team=player.orange] at @s run tag @a[team=!player.orange,distance=..16] add slow_norn_now
execute as @p[tag=attacker,team=player.pink] at @s run tag @a[team=!player.pink,distance=..16] add slow_norn_now
execute as @p[tag=attacker,team=player.cyan] at @s run tag @a[team=!player.cyan,distance=..16] add slow_norn_now

#ホーンの音
execute as @a[tag=slow_norn_now] at @s run playsound minecraft:item.goat_horn.sound.6 master @s ~ ~ ~ 1 2 0.1

#メッセージ
tellraw @a[tag=slow_norn_now] {"text":"スロー効果を喰らってしまった！","color":"aqua",bold:true}
tellraw @p[tag=attacker] {"text":"相手にスロー効果を付与した！","color":"aqua",bold:true}

#スロー効果の音
execute as @a[tag=slow_norn_now] at @s run playsound minecraft:block.bubble_column.whirlpool_inside player @s ~ ~ ~ 1 1 0.1

#スロー効果のタグを付与
tag @a[tag=slow_norn_now] add slow_norn
tag @a[tag=slow_norn_now] remove slow_norn_now