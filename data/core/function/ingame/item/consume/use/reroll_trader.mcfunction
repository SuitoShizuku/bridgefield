execute if entity @n[tag=reroll_trader] run tellraw @a {"text":"別のリロール商人が消えてしまった",color:gold,bold:true}

execute as @e[tag=reroll_trader] at @s run kill @s

summon minecraft:wandering_trader ~ ~ ~ {attributes:[{id:"minecraft:scale",base:0.5}],NoAI:1b,Passengers:[{id:"minecraft:text_display",text:{"text":"リロール商人"},billboard:"vertical",Tags:[reroll_trader]}]}