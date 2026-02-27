execute store result score $temp bf run random value 0..4
execute if score $temp bf matches 1 at @n[tag=stage.base] at @e[tag=game.marker.island,distance=..75,sort=random,limit=1] run function core:stage/explotion/
execute if score $temp bf matches 2 at @n[tag=stage.base] at @e[tag=game.marker.island,distance=..75,sort=random,limit=2] run function core:stage/explotion/
execute if score $temp bf matches 3 at @n[tag=stage.base] at @e[tag=game.marker.island,distance=..75,sort=random,limit=3] run function core:stage/explotion/
execute if score $temp bf matches 4 at @n[tag=stage.base] at @e[tag=game.marker.island,distance=..75,sort=random,limit=4] run function core:stage/explotion/


execute if score $temp bf matches 0 run tellraw @a [{translate:"bf.chat.explode_roulette.fail","fallback":"%sが島を爆破しようとして失敗した。",color:"gold",with:[{selector:"@s"}]}]
execute if score $temp bf matches 1.. run tellraw @a [{translate:"bf.chat.explode_roulette","fallback":"%1$sが%2$s島爆破した。",color:"gold",with:[{selector:"@s"},{score:{name:"$temp",objective:"bf"},color:"dark_red"}]}]