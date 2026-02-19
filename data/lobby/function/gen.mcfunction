kill @e[tag=lobby]
summon minecraft:interaction 0 2 5.4999 {"height": 1,"width": 1,"Tags": ["lobby","lobby.interact.start"]}
summon minecraft:text_display 0 2.5 4.999 {"Tags": ["lobby","lobby.text.start"],"text":[{translate:"bf.lobby.start",fallback:"リソースパックを導入してください"}],"billboard":"fixed","Rotation":[180,0]}
setblock 0 2 5 minecraft:waxed_copper_bulb[lit=false]

summon minecraft:text_display 4.999 4 0 {"Tags": ["lobby"],"text":[{translate:"bf.lobby.teams.title",fallback:"リソースパックを導入してください"}],"billboard":"fixed","Rotation":[90,0],transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[2.0f,2.0f,2.0f]}}
summon minecraft:text_display 7.5 3.0 -3.0 {"Tags": ["lobby"],"text":[{translate:"bf.lobby.teams.join",fallback:"リソースパックを導入してください"}],"billboard":"vertical"}
summon minecraft:text_display 7.5 3.0 4.0 {"Tags": ["lobby"],"text":[{translate:"bf.lobby.teams.leave",fallback:"リソースパックを導入してください"}],"billboard":"vertical"}
summon minecraft:block_display 9.0 4.0 -1.0 {"block_state":{"Name":"spruce_fence",Properties:{north:"true",south:"true"}},Tags:["lobby","lobby.block_display"],brightness:{block:14,sky:1}}
summon minecraft:block_display 9.0 4.0 0.0 {"block_state":{"Name":"spruce_fence",Properties:{north:"true",south:"true"}},Tags:["lobby","lobby.block_display"],brightness:{block:14,sky:1}}
summon minecraft:block_display 9.0 4.0 1.0 {"block_state":{"Name":"spruce_fence",Properties:{north:"true",south:"true"}},Tags:["lobby","lobby.block_display"],brightness:{block:14,sky:1}}