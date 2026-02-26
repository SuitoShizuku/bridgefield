
#凍傷で氷結ハンマー食らうと確実に10dmg
execute as @s[tag=frost_stun,tag=frostbite] at @s run function core:ingame/item/armor/damage {damage:"0",trueDamage:"10"}
execute as @s[tag=frost_stun,tag=frostbite] at @s run tellraw @s [{"text":"凍傷を持っていたので氷結ダメージを受けた！","color":"blue",bold:true}]
execute as @s[tag=frost_stun,tag=frostbite] at @s run playsound minecraft:block.anvil.place player @s ~ ~ ~ 1 0.1 0.1

#スタンまたは氷結スタンがあるとターンエンド
execute as @s[tag=stun] run function core:ingame/turn/end
execute as @s[tag=frost_stun] run function core:ingame/turn/end
execute as @s[tag=stun] run tellraw @s [{"text":"スタン状態でターンスキップ！","color":"red",bold:true}]
execute as @s[tag=stun] run tellraw @s [{"text":"スタン状態でターンスキップ！","color":"red",bold:true}]
#tag remove
tag @s remove stun
tag @s remove frost_stun