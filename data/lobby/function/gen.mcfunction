kill @e[tag=lobby]
# ゲーム開始インタラクト
summon minecraft:interaction 0 2 5.4999 {"height": 1,"width": 1,"Tags": ["lobby","lobby.interact.start"]}
summon minecraft:text_display 0 2.25 4.999 {"Tags": ["lobby","lobby.text.start"],"text":[{translate:"bf.interact.start",fallback:"右クリックで\nゲームスタート"}],"billboard":"fixed","Rotation":[180,0],brightness:{sky:15,block:15}}
setblock 0 2 5 minecraft:waxed_copper_bulb[lit=false]

# マップセレクター
data merge storage bf:maps {list:[\
    {monument:"grass_block",title:{translate:"bf.map.1",fallback:"「クラシック」"},credit:"SuitoShizuku"},\
    {monument:"sandstone",title:{translate:"bf.map.2",fallback:"「アポミナリア」"},credit:"Michaelnear"}\
]}
summon minecraft:interaction 0 3.1 5.3 {"height": 0.7,"width": 0.7,"Tags": ["lobby","lobby.interact.map","lobby.interact.map.center"]}
summon minecraft:interaction -0.2 3.1 5.3 {"height": 0.7,"width": 0.7,"Tags": ["lobby","lobby.interact.map","lobby.interact.map.right"]}
summon minecraft:interaction 1.2 3.1 5.3 {"height": 0.7,"width": 0.7,"Tags": ["lobby","lobby.interact.map","lobby.interact.map.left"]}
summon minecraft:text_display 0 4.2 4.999 {"Tags": ["lobby","lobby.text.map"],"text":[{translate:"bf.interact.map",fallback:"マップ選択"}],"billboard":"fixed","Rotation":[180,0],brightness:{sky:15,block:15},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.5f,1.5f,1.5f]}}
summon minecraft:text_display 0 3.9 4.999 {"Tags": ["lobby","lobby.text.map.title"],"text":[{translate:"bf.map.1",fallback:"「クラシック」"}],"billboard":"fixed","Rotation":[180,0],brightness:{sky:15,block:15}}
summon block_display 0 3.15 5.3 {Tags:["lobby","lobby.monument.map"],block_state:{Name:"stone"},"transformation":{"left_rotation":[0.0,2.5,0.0,1.0],"right_rotation":[0.0,0.0,0.0,1.0],"scale":[0.6,0.6,0.6],"translation":[0.0,0.0,0.0]},brightness:{"block":15,"sky":15}}
function lobby:settings/maps/monument
# マッププレビュー
summon shulker 101 30 79 {Tags:["lobby","lobby.map.preview"],"NoAI":true,"NoGravity":true,"attributes":[{"id":"minecraft:scale","base":0.5}],"active_effects":[{"id":"minecraft:invisibility","duration":-1,"show_particles":false}],"Silent":true,"Invulnerable":true}
summon shulker 100 30 79 {Tags:["lobby","lobby.map.preview"],"NoAI":true,"NoGravity":true,"attributes":[{"id":"minecraft:scale","base":0.5}],"active_effects":[{"id":"minecraft:invisibility","duration":-1,"show_particles":false}],"Silent":true,"Invulnerable":true}
summon shulker 100 30 78 {Tags:["lobby","lobby.map.preview"],"NoAI":true,"NoGravity":true,"attributes":[{"id":"minecraft:scale","base":0.5}],"active_effects":[{"id":"minecraft:invisibility","duration":-1,"show_particles":false}],"Silent":true,"Invulnerable":true}

# チーム割当
summon minecraft:text_display 4.999 4 0 {"Tags": ["lobby"],"text":[{translate:"bf.lobby.teams.title",fallback:"チーム割当"}],"billboard":"fixed",brightness:{block:15,sky:15},"Rotation":[90,0],transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[3.0f,3.0f,3.0f]}}
summon minecraft:text_display 7.5 3.0 -3.0 {"Tags": ["lobby"],"text":[{translate:"bf.lobby.teams.join",fallback:"ゲームに参加する\nランダムチームで予約"}],"billboard":"vertical",brightness:{block:15,sky:15}}
summon minecraft:text_display 7.5 3.0 4.0 {"Tags": ["lobby"],"text":[{translate:"bf.lobby.teams.leave",fallback:"観戦者になる"}],"billboard":"vertical",brightness:{block:15,sky:15}}
summon minecraft:block_display 9.0 4.0 -1.0 {"block_state":{"Name":"spruce_fence",Properties:{north:"true",south:"true"}},Tags:["lobby","lobby.block_display"],brightness:{block:10,sky:0}}
summon minecraft:block_display 9.0 4.0 0.0 {"block_state":{"Name":"spruce_fence",Properties:{north:"true",south:"true"}},Tags:["lobby","lobby.block_display"],brightness:{block:10,sky:0}}
summon minecraft:block_display 9.0 4.0 1.0 {"block_state":{"Name":"spruce_fence",Properties:{north:"true",south:"true"}},Tags:["lobby","lobby.block_display"],brightness:{block:10,sky:0}}
summon minecraft:block_display 25.0 4.0 -1.0 {"block_state":{"Name":"spruce_fence",Properties:{north:"true",south:"true"}},Tags:["lobby","lobby.block_display"],brightness:{block:14,sky:0}}
summon minecraft:block_display 25.0 4.0 0.0 {"block_state":{"Name":"spruce_fence",Properties:{north:"true",south:"true"}},Tags:["lobby","lobby.block_display"],brightness:{block:14,sky:0}}
summon minecraft:block_display 25.0 4.0 1.0 {"block_state":{"Name":"spruce_fence",Properties:{north:"true",south:"true"}},Tags:["lobby","lobby.block_display"],brightness:{block:14,sky:0}}
summon minecraft:text_display 11.5 3.0 -3.0 {"Tags": ["lobby"],"text":[{translate:"bf.lobby.teams.red",fallback:"赤チームで予約"}],"billboard":"vertical",brightness:{block:15,sky:15}}
summon minecraft:text_display 11.5 3.0 4.0 {"Tags": ["lobby"],"text":[{translate:"bf.lobby.teams.blue",fallback:"青チームで予約"}],"billboard":"vertical",brightness:{block:15,sky:15}}
summon minecraft:text_display 15.5 3.0 -3.0 {"Tags": ["lobby"],"text":[{translate:"bf.lobby.teams.yellow",fallback:"黄チームで予約"}],"billboard":"vertical",brightness:{block:15,sky:15}}
summon minecraft:text_display 15.5 3.0 4.0 {"Tags": ["lobby"],"text":[{translate:"bf.lobby.teams.green",fallback:"緑チームで予約"}],"billboard":"vertical",brightness:{block:15,sky:15}}
summon minecraft:text_display 19.5 3.0 -3.0 {"Tags": ["lobby"],"text":[{translate:"bf.lobby.teams.orange",fallback:"橙チームで予約"}],"billboard":"vertical",brightness:{block:15,sky:15}}
summon minecraft:text_display 19.5 3.0 4.0 {"Tags": ["lobby"],"text":[{translate:"bf.lobby.teams.pink",fallback:"桃チームで予約"}],"billboard":"vertical",brightness:{block:15,sky:15}}
summon minecraft:text_display 23.5 3.0 -3.0 {"Tags": ["lobby"],"text":[{translate:"bf.lobby.teams.cyan",fallback:"水チームで予約"}],"billboard":"vertical",brightness:{block:15,sky:15}}
summon minecraft:text_display 23.5 3.0 4.0 {"Tags": ["lobby"],"text":[{translate:"bf.lobby.teams.white",fallback:"白チームで予約"}],"billboard":"vertical",brightness:{block:15,sky:15}}

# 設定
summon minecraft:text_display 0.5 4 -20.001 {"Tags": ["lobby"],"text":[{translate:"bf.lobby.settings.title",fallback:"全体設定"}],"billboard":"fixed",brightness:{block:15,sky:15},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[3.0f,3.0f,3.0f]}}
## 数値系
summon minecraft:text_display -3.999 3.7 -25.5 {"Tags": ["lobby","lobby.text.settings"],"text":[{translate:"bf.lobby.settings.value",fallback:"%1$sで加算\n%2$sで減算",with:[{keybind:"key.use"},{keybind:"key.attack"}]}],"billboard":"fixed","Rotation":[-90,0],brightness:{sky:15,block:15},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.5f,1.5f,1.5f]}}
summon minecraft:text_display -3.999 2.7 -25.5 {"Tags": ["lobby","lobby.text.settings"],"text":[{translate:"bf.lobby.settings.turn_time",fallback:"1ターン毎\nの時間"}],"billboard":"fixed","Rotation":[-90,0],brightness:{sky:15,block:15}}
summon minecraft:text_display -3.999 2.2 -25.5 {"Tags": ["lobby","lobby.text.settings","lobby.text.settings.turn_time"],"text":[{translate:"bf.tick",fallback:"%s/20秒",with:[{score:{name:"$turn_time",objective:"bf"}}]}],"billboard":"fixed","Rotation":[-90,0],brightness:{sky:15,block:15},line_width:50}
execute as @n[tag=lobby.text.settings.turn_time,type=text_display] run function lobby:settings/lr_switch/turn_time/set_display
summon minecraft:interaction -4.499 2.0 -25.5 {"Tags": ["lobby","lobby.interact.settings","lobby.interact.settings.turn_time"]}

summon minecraft:text_display -3.999 2.7 -26.5 {"Tags": ["lobby","lobby.text.settings"],"text":[{translate:"bf.lobby.settings.ef",fallback:"終末の時"}],"billboard":"fixed","Rotation":[-90,0],brightness:{sky:15,block:15}}
summon minecraft:text_display -3.999 2.2 -26.5 {"Tags": ["lobby","lobby.text.settings","lobby.text.settings.ef"],"text":[{translate:"bf.round",fallback:"%sラウンド",with:[{score:{name:"$EF",objective:"bf"}}]}],"billboard":"fixed","Rotation":[-90,0],brightness:{sky:15,block:15}}
summon minecraft:interaction -4.499 2.0 -26.5 {"Tags": ["lobby","lobby.interact.settings","lobby.interact.settings.ef"]}

# アスレ
summon minecraft:happy_ghast -21 1 3 {"NoAI":true,"Silent":true,"Invulnerable":true,"Tags":["lobby","asr"],"active_effects":[{"id":"minecraft:invisibility","duration":-1,"amplifier":0,"ambient":true,"show_particles":false}],"attributes":[{"base":0.25,"id":"minecraft:scale"}],"Passengers":[{"id":"minecraft:block_display","transformation":{"left_rotation":[0.0,0.0,0.0,1.0],"right_rotation":[0.0,0.0,0.0,1.0],"scale":[1.0,0.1,1.0],"translation":[-0.5,-0.1,-0.92]},"block_state":{Name:"glass"},"Tags":["lobby","asr"],"brightness":{"block":15,"sky":15}}]}
summon minecraft:happy_ghast -21 1 4 {"NoAI":true,"Silent":true,"Invulnerable":true,"Tags":["lobby","asr"],"active_effects":[{"id":"minecraft:invisibility","duration":-1,"amplifier":0,"ambient":true,"show_particles":false}],"attributes":[{"base":0.25,"id":"minecraft:scale"}],"Passengers":[{"id":"minecraft:block_display","transformation":{"left_rotation":[0.0,0.0,0.0,1.0],"right_rotation":[0.0,0.0,0.0,1.0],"scale":[1.0,0.1,1.0],"translation":[-0.5,-0.1,-0.92]},"block_state":{Name:"glass"},"Tags":["lobby","asr"],"brightness":{"block":15,"sky":15}}]}
summon minecraft:happy_ghast -21 1 5 {"NoAI":true,"Silent":true,"Invulnerable":true,"Tags":["lobby","asr"],"active_effects":[{"id":"minecraft:invisibility","duration":-1,"amplifier":0,"ambient":true,"show_particles":false}],"attributes":[{"base":0.25,"id":"minecraft:scale"}],"Passengers":[{"id":"minecraft:block_display","transformation":{"left_rotation":[0.0,0.0,0.0,1.0],"right_rotation":[0.0,0.0,0.0,1.0],"scale":[1.0,0.1,1.0],"translation":[-0.5,-0.1,-0.92]},"block_state":{Name:"glass"},"Tags":["lobby","asr"],"brightness":{"block":15,"sky":15}}]}
summon minecraft:happy_ghast -18 2 3 {"NoAI":true,"Silent":true,"Invulnerable":true,"Tags":["lobby","asr"],"active_effects":[{"id":"minecraft:invisibility","duration":-1,"amplifier":0,"ambient":true,"show_particles":false}],"attributes":[{"base":0.25,"id":"minecraft:scale"}],"Passengers":[{"id":"minecraft:block_display","transformation":{"left_rotation":[0.0,0.0,0.0,1.0],"right_rotation":[0.0,0.0,0.0,1.0],"scale":[1.0,0.1,1.0],"translation":[-0.5,-0.1,-0.92]},"block_state":{Name:"glass"},"Tags":["lobby","asr"],"brightness":{"block":15,"sky":15}}]}
summon minecraft:happy_ghast -18 2 4 {"NoAI":true,"Silent":true,"Invulnerable":true,"Tags":["lobby","asr"],"active_effects":[{"id":"minecraft:invisibility","duration":-1,"amplifier":0,"ambient":true,"show_particles":false}],"attributes":[{"base":0.25,"id":"minecraft:scale"}],"Passengers":[{"id":"minecraft:block_display","transformation":{"left_rotation":[0.0,0.0,0.0,1.0],"right_rotation":[0.0,0.0,0.0,1.0],"scale":[1.0,0.1,1.0],"translation":[-0.5,-0.1,-0.92]},"block_state":{Name:"glass"},"Tags":["lobby","asr"],"brightness":{"block":15,"sky":15}}]}
summon minecraft:happy_ghast -18 2 5 {"NoAI":true,"Silent":true,"Invulnerable":true,"Tags":["lobby","asr"],"active_effects":[{"id":"minecraft:invisibility","duration":-1,"amplifier":0,"ambient":true,"show_particles":false}],"attributes":[{"base":0.25,"id":"minecraft:scale"}],"Passengers":[{"id":"minecraft:block_display","transformation":{"left_rotation":[0.0,0.0,0.0,1.0],"right_rotation":[0.0,0.0,0.0,1.0],"scale":[1.0,0.1,1.0],"translation":[-0.5,-0.1,-0.92]},"block_state":{Name:"glass"},"Tags":["lobby","asr"],"brightness":{"block":15,"sky":15}}]}
summon minecraft:happy_ghast -15 1 3 {"NoAI":true,"Silent":true,"Invulnerable":true,"Tags":["lobby","asr"],"active_effects":[{"id":"minecraft:invisibility","duration":-1,"amplifier":0,"ambient":true,"show_particles":false}],"attributes":[{"base":0.25,"id":"minecraft:scale"}],"Passengers":[{"id":"minecraft:block_display","transformation":{"left_rotation":[0.0,0.0,0.0,1.0],"right_rotation":[0.0,0.0,0.0,1.0],"scale":[1.0,0.1,1.0],"translation":[-0.5,-0.1,-0.92]},"block_state":{Name:"glass"},"Tags":["lobby","asr"],"brightness":{"block":15,"sky":15}}]}
summon minecraft:happy_ghast -15 1 4 {"NoAI":true,"Silent":true,"Invulnerable":true,"Tags":["lobby","asr"],"active_effects":[{"id":"minecraft:invisibility","duration":-1,"amplifier":0,"ambient":true,"show_particles":false}],"attributes":[{"base":0.25,"id":"minecraft:scale"}],"Passengers":[{"id":"minecraft:block_display","transformation":{"left_rotation":[0.0,0.0,0.0,1.0],"right_rotation":[0.0,0.0,0.0,1.0],"scale":[1.0,0.1,1.0],"translation":[-0.5,-0.1,-0.92]},"block_state":{Name:"glass"},"Tags":["lobby","asr"],"brightness":{"block":15,"sky":15}}]}
summon minecraft:happy_ghast -15 1 5 {"NoAI":true,"Silent":true,"Invulnerable":true,"Tags":["lobby","asr"],"active_effects":[{"id":"minecraft:invisibility","duration":-1,"amplifier":0,"ambient":true,"show_particles":false}],"attributes":[{"base":0.25,"id":"minecraft:scale"}],"Passengers":[{"id":"minecraft:block_display","transformation":{"left_rotation":[0.0,0.0,0.0,1.0],"right_rotation":[0.0,0.0,0.0,1.0],"scale":[1.0,0.1,1.0],"translation":[-0.5,-0.1,-0.92]},"block_state":{Name:"glass"},"Tags":["lobby","asr"],"brightness":{"block":15,"sky":15}}]}
# スロット
summon marker -12.5 4.0 -8.0 {Tags:["lobby","lobby.minigame.slot","lobby.minigame.slot.1"]}
summon marker -11.5 4.0 -8.0 {Tags:["lobby","lobby.minigame.slot","lobby.minigame.slot.2"]}
summon marker -10.5 4.0 -8.0 {Tags:["lobby","lobby.minigame.slot","lobby.minigame.slot.3"]}