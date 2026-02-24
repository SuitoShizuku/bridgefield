#凍傷で氷結ハンマー食らうと確実に10dmg
execute as @s[tag=frost_stun,tag=frostbite] at @s run function core:ingame/item/armor/damage {damage:"0",trueDamage:"10"}

#スタンまたは氷結スタンがあるとターンエンド
execute as @s[tag=stun] run function core:ingame/turn/end
execute as @s[tag=frost_stun] run function core:ingame/turn/end

#tag remove
tag @s remove stun
tag @s remove frost_stun