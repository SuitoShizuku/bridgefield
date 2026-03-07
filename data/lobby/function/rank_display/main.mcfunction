#rotation,rdタグのついたエンティティは回転
execute as @e[tag=rd,tag=rotation] at @s run tp @s ~ ~ ~ ~5 ~

#見ているときサイズ変更
execute as @e[type=interaction,tag=rd] at @s run function lobby:rank_display/display/look/