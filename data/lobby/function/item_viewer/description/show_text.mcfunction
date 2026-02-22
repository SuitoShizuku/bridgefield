data remove storage bf:iv text
data modify storage bf:iv text append value ["",{"text":"----","color":"gold"}," 「$(name)」 ",{"text":"----","color":"gold"},"\n",{"text":"-------------------","color":"gray"},"\n",{"text":"アイテムタイプ","color":"blue"},"  -",{"text":"「","color":"gray"},{"text":"$(lore)","color":"green"},{"text":"」","color":"gray"}]
tellraw @s {"nbt":text,storage:"bf:iv",interpret:true}