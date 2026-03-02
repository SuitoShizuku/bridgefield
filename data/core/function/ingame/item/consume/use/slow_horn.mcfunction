#特殊効果
execute as @s[team=player.blue] at @s run tag @a[team=!player.blue,distance=..16] add slow_horn_now
execute as @s[team=player.red] at @s run tag @a[team=!player.red,distance=..16] add slow_horn_now
execute as @s[team=player.green] at @s run tag @a[team=!player.green,distance=..16] add slow_horn_now
execute as @s[team=player.yellow] at @s run tag @a[team=!player.yellow,distance=..16] add slow_horn_now
execute as @s[team=player.white] at @s run tag @a[team=!player.white,distance=..16] add slow_horn_now
execute as @s[team=player.orange] at @s run tag @a[team=!player.orange,distance=..16] add slow_horn_now
execute as @s[team=player.pink] at @s run tag @a[team=!player.pink,distance=..16] add slow_horn_now
execute as @s[team=player.cyan] at @s run tag @a[team=!player.cyan,distance=..16] add slow_horn_now

#ホーンの音
execute as @a[tag=slow_horn_now] at @s run playsound minecraft:item.goat_horn.sound.6 master @s ~ ~ ~ 1 2 0.1

#メッセージ
tellraw @a[tag=slow_horn_now] {"text":"スロー効果を喰らってしまった！","color":"aqua",bold:true}
tellraw @s {"text":"周囲の敵にスロー効果を付与した！","color":"aqua",bold:true}

#スロー効果の音
execute as @a[tag=slow_horn_now] at @s run playsound minecraft:block.bubble_column.whirlpool_inside player @s ~ ~ ~ 1 1 0.1

#スロー効果のタグを付与
tag @a[tag=slow_horn_now] add slow_horn
tag @a[tag=slow_horn_now] remove slow_horn_now