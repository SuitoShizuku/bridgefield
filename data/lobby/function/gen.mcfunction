kill @e[tag=lobby]

#itemvewerを非表示に
execute if score $toggle iv matches 1 run function lobby:item_viewer/toggle

# ゲーム開始インタラクト
summon minecraft:interaction 0 2 5.4999 {"height": 1,"width": 1,"Tags": ["lobby","lobby.interact.start"]}
summon minecraft:text_display 0 2.25 4.999 {"Tags": ["lobby","lobby.text.start"],"text":[{translate:"bf.interact.start",fallback:"右クリックで\nゲームスタート"}],"billboard":"fixed","Rotation":[180,0],brightness:{sky:15,block:15}}
setblock 0 2 5 minecraft:waxed_copper_bulb[lit=false]

# マップセレクター
data merge storage bf:maps {list:[\
    {monument:"grass_block",title:{translate:"bf.map.1",fallback:"「クラシック」"},credit:"SuitoShizuku"},\
    {monument:"sandstone",title:{translate:"bf.map.2",fallback:"「アポミナリア」"},credit:"Michaelnear"},\
    {monument:"polished_tuff",title:{translate:"bf.map.3",fallback:"「シンフォニア」"},credit:"Michaelnear"},\
    {monument:"end_stone",title:{translate:"bf.map.4",fallback:"「ジ・エンド」"},credit:"SuitoShizuku, Michaelnear"}\
]}
summon minecraft:interaction 0.5 3.1 5.3 {"height": 0.7,"width": 0.7,"Tags": ["lobby","lobby.interact.map","lobby.interact.map.center"]}
summon minecraft:interaction -0.2 3.1 5.3 {"height": 0.7,"width": 0.7,"Tags": ["lobby","lobby.interact.map","lobby.interact.map.right"]}
summon minecraft:interaction 1.2 3.1 5.3 {"height": 0.7,"width": 0.7,"Tags": ["lobby","lobby.interact.map","lobby.interact.map.left"]}
summon minecraft:text_display 0 4.2 4.999 {"Tags": ["lobby","lobby.text.map"],"text":[{translate:"bf.interact.map",fallback:"マップ選択"}],"billboard":"fixed","Rotation":[180,0],brightness:{sky:15,block:15},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.5f,1.5f,1.5f]}}
summon minecraft:text_display 0 3.9 4.999 {"Tags": ["lobby","lobby.text.map.title"],"text":[{translate:"bf.map.1",fallback:"「クラシック」"}],"billboard":"fixed","Rotation":[180,0],brightness:{sky:15,block:15}}
summon minecraft:text_display 1.2 3.1 4.9 {"Tags": ["lobby","lobby.text.map.subtext.1"],"text":[{translate:"bf.interact.map.sub_back",fallback:"前のマップ"}],"billboard":"fixed","Rotation":[180,0],brightness:{sky:15,block:15},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f]}}
summon minecraft:text_display 0.5 3.1 4.9 {"Tags": ["lobby","lobby.text.map.subtext.2"],"text":[{translate:"bf.interact.map.sub_preview",fallback:"マップを見る"}],"billboard":"fixed","Rotation":[180,0],brightness:{sky:15,block:15},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f]}}
summon minecraft:text_display -0.2 3.1 4.9 {"Tags": ["lobby","lobby.text.map.subtext.3"],"text":[{translate:"bf.interact.map.sub_next",fallback:"次のマップ"}],"billboard":"fixed","Rotation":[180,0],brightness:{sky:15,block:15},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f]}}
summon block_display 0 3.15 5.3 {Tags:["lobby","lobby.monument.map"],block_state:{Name:"stone"},"transformation":[-0.3535533906f,0f,0.3535533906f,0f,-0.25f,0.3535533906f,-0.25f,0.5f,-0.25f,-0.3535533906f,-0.25f,0.1875f,0f,0f,0f,1f],brightness:{"block":13,"sky":0}}
summon block_display 0.5 3.075 5.17 {Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:oak_stairs",Properties:{facing:"east",half:"bottom",shape:"straight"}},transformation:[0.3535533906f,-0.3535533906f,0f,0.625f,0.3535533906f,0.3535533906f,0f,0f,0f,0f,0.5f,-0.1875f,0f,0f,0f,1f],Tags:["lobby","lobby.block_display"],brightness:{block:15,sky:0}},{id:"minecraft:block_display",block_state:{Name:"minecraft:oak_stairs",Properties:{facing:"east",half:"bottom",shape:"straight"}},transformation:[-0.3535533906f,0.3535533906f,0f,-0.625f,0.3535533906f,0.3535533906f,0f,0f,0f,0f,-0.5f,0.3125f,0f,0f,0f,1f],Tags:["lobby","lobby.block_display"],brightness:{block:15,sky:0}}],Tags:["lobby","lobby.block_display"]}
function lobby:settings/maps/monument
# マッププレビュー
summon shulker 101 30 79 {Tags:["lobby","lobby.map.preview"],"NoAI":true,"NoGravity":true,"attributes":[{"id":"minecraft:scale","base":0.5}],"active_effects":[{"id":"minecraft:invisibility","duration":-1,"show_particles":false}],"Silent":true,"Invulnerable":true}
summon shulker 100 30 79 {Tags:["lobby","lobby.map.preview"],"NoAI":true,"NoGravity":true,"attributes":[{"id":"minecraft:scale","base":0.5}],"active_effects":[{"id":"minecraft:invisibility","duration":-1,"show_particles":false}],"Silent":true,"Invulnerable":true}
summon shulker 100 30 78 {Tags:["lobby","lobby.map.preview"],"NoAI":true,"NoGravity":true,"attributes":[{"id":"minecraft:scale","base":0.5}],"active_effects":[{"id":"minecraft:invisibility","duration":-1,"show_particles":false}],"Silent":true,"Invulnerable":true}

# チーム割当
summon minecraft:text_display 4.999 4 0 {"Tags": ["lobby"],"text":[{translate:"bf.lobby.teams.title",fallback:"チーム割当"}],"billboard":"fixed",brightness:{block:15,sky:15},"Rotation":[90,0],transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[3.0f,3.0f,3.0f]}}
summon minecraft:text_display 7.5 3.0 -3.0 {"Tags": ["lobby"],"text":[{translate:"bf.lobby.teams.join",fallback:"ランダムチームで参加"}],"billboard":"vertical",brightness:{block:15,sky:15}}
summon minecraft:text_display 7.5 3.0 4.0 {"Tags": ["lobby"],"text":[{translate:"bf.lobby.teams.leave",fallback:"観戦者になる"}],"billboard":"vertical",brightness:{block:15,sky:15}}
summon minecraft:block_display 9.0 4.0 -1.0 {"block_state":{"Name":"spruce_fence",Properties:{north:"true",south:"true"}},Tags:["lobby","lobby.block_display"],brightness:{block:10,sky:0}}
summon minecraft:block_display 9.0 4.0 0.0 {"block_state":{"Name":"spruce_fence",Properties:{north:"true",south:"true"}},Tags:["lobby","lobby.block_display"],brightness:{block:10,sky:0}}
summon minecraft:block_display 9.0 4.0 1.0 {"block_state":{"Name":"spruce_fence",Properties:{north:"true",south:"true"}},Tags:["lobby","lobby.block_display"],brightness:{block:10,sky:0}}
summon minecraft:block_display 25.0 4.0 -1.0 {"block_state":{"Name":"spruce_fence",Properties:{north:"true",south:"true"}},Tags:["lobby","lobby.block_display"],brightness:{block:14,sky:0}}
summon minecraft:block_display 25.0 4.0 0.0 {"block_state":{"Name":"spruce_fence",Properties:{north:"true",south:"true"}},Tags:["lobby","lobby.block_display"],brightness:{block:14,sky:0}}
summon minecraft:block_display 25.0 4.0 1.0 {"block_state":{"Name":"spruce_fence",Properties:{north:"true",south:"true"}},Tags:["lobby","lobby.block_display"],brightness:{block:14,sky:0}}
summon minecraft:text_display 11.5 3.0 -3.0 {"Tags": ["lobby"],"text":[{translate:"bf.lobby.teams.red",fallback:"赤チームで参加"}],"billboard":"vertical",brightness:{block:15,sky:15}}
summon minecraft:text_display 11.5 3.0 4.0 {"Tags": ["lobby"],"text":[{translate:"bf.lobby.teams.blue",fallback:"青チームで参加"}],"billboard":"vertical",brightness:{block:15,sky:15}}
summon minecraft:text_display 15.5 3.0 -3.0 {"Tags": ["lobby"],"text":[{translate:"bf.lobby.teams.yellow",fallback:"黄チームで参加"}],"billboard":"vertical",brightness:{block:15,sky:15}}
summon minecraft:text_display 15.5 3.0 4.0 {"Tags": ["lobby"],"text":[{translate:"bf.lobby.teams.green",fallback:"緑チームで参加"}],"billboard":"vertical",brightness:{block:15,sky:15}}
summon minecraft:text_display 19.5 3.0 -3.0 {"Tags": ["lobby"],"text":[{translate:"bf.lobby.teams.orange",fallback:"橙チームで参加"}],"billboard":"vertical",brightness:{block:15,sky:15}}
summon minecraft:text_display 19.5 3.0 4.0 {"Tags": ["lobby"],"text":[{translate:"bf.lobby.teams.pink",fallback:"桃チームで参加"}],"billboard":"vertical",brightness:{block:15,sky:15}}
summon minecraft:text_display 23.5 3.0 -3.0 {"Tags": ["lobby"],"text":[{translate:"bf.lobby.teams.cyan",fallback:"水チームで参加"}],"billboard":"vertical",brightness:{block:15,sky:15}}
summon minecraft:text_display 23.5 3.0 4.0 {"Tags": ["lobby"],"text":[{translate:"bf.lobby.teams.white",fallback:"白チームで参加"}],"billboard":"vertical",brightness:{block:15,sky:15}}

# 設定
summon minecraft:text_display 0.5 4 -19.999 {"Tags": ["lobby"],"text":[{translate:"bf.lobby.settings.title",fallback:"全体設定"}],"billboard":"fixed",brightness:{block:15,sky:15},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[3.0f,3.0f,3.0f]}}
summon text_display 0.5 2.5 -22.0 {Tags:["lobby","lobby.text.settings.description"],text:[{translate:"bf.lobby.settings.description",fallback:"各設定のテキストを\n%1$s・%2$sで変更する。\n（F3+%3$sで当たり判定を表示）",with:[{keybind:"key.use"},{keybind:"key.attack"},{keybind:"key.debug.showHitboxes"}]}],billboard:"fixed",brightness:{block:15,sky:15},Rotation:[180,0]}
## 数値系
summon minecraft:text_display -3.999 3.7 -25.5 {"Tags": ["lobby","lobby.text.settings"],"text":[{translate:"bf.lobby.settings.value",fallback:"%1$sで加算\n%2$sで減算",with:[{keybind:"key.use"},{keybind:"key.attack"}]}],"billboard":"fixed","Rotation":[-90,0],brightness:{sky:15,block:15},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.5f,1.5f,1.5f]}}
## 最大チーム数
summon minecraft:text_display -3.999 2.7 -24.5 {"Tags": ["lobby","lobby.text.settings"],"text":[{translate:"bf.lobby.settings.teams",fallback:"チーム数"}],"billboard":"fixed","Rotation":[-90,0],brightness:{sky:15,block:15}}
summon minecraft:text_display -3.999 2.2 -24.5 {"Tags": ["lobby","lobby.text.settings","lobby.text.settings.teams"],"text":[{translate:"bf.round",fallback:"%sチーム",with:[{score:{name:"$max_teams",objective:"bf"}}]}],"billboard":"fixed","Rotation":[-90,0],brightness:{sky:15,block:15}}
summon minecraft:interaction -4.499 2.0 -24.5 {"Tags": ["lobby","lobby.interact.settings","lobby.interact.settings.teams"]}
### 最大チームのフェンスモーション用
function lobby:settings/team/fence/init
## 1ターン毎の時間
summon minecraft:text_display -3.999 2.7 -25.5 {"Tags": ["lobby","lobby.text.settings"],"text":[{translate:"bf.lobby.settings.turn_time",fallback:"1ターン毎\nの時間"}],"billboard":"fixed","Rotation":[-90,0],brightness:{sky:15,block:15}}
summon minecraft:text_display -3.999 2.2 -25.5 {"Tags": ["lobby","lobby.text.settings","lobby.text.settings.turn_time"],"text":[{translate:"bf.tick",fallback:"%s/20秒",with:[{score:{name:"$turn_time",objective:"bf"}}]}],"billboard":"fixed","Rotation":[-90,0],brightness:{sky:15,block:15},line_width:50}
execute as @n[tag=lobby.text.settings.turn_time,type=text_display] run function lobby:settings/lr_switch/turn_time/set_display
summon minecraft:interaction -4.499 2.0 -25.5 {"Tags": ["lobby","lobby.interact.settings","lobby.interact.settings.turn_time"]}
## 終末の時
summon minecraft:text_display -3.999 2.7 -26.5 {"Tags": ["lobby","lobby.text.settings"],"text":[{translate:"bf.lobby.settings.ef",fallback:"終末の時"}],"billboard":"fixed","Rotation":[-90,0],brightness:{sky:15,block:15}}
summon minecraft:text_display -3.999 2.2 -26.5 {"Tags": ["lobby","lobby.text.settings","lobby.text.settings.ef"],"text":[{translate:"bf.round",fallback:"%sラウンド",with:[{score:{name:"$EF",objective:"bf"}}]}],"billboard":"fixed","Rotation":[-90,0],brightness:{sky:15,block:15}}
summon minecraft:interaction -4.499 2.0 -26.5 {"Tags": ["lobby","lobby.interact.settings","lobby.interact.settings.ef"]}
## 時間帯設定
summon minecraft:interaction 5.499 1.0 -26.5 {"Tags": ["lobby","lobby.interact.settings","lobby.interact.settings.day"],height:3}
summon minecraft:text_display 4.999 2.7 -26.5 {"Tags": ["lobby","lobby.text.settings"],"text":[{translate:"bf.lobby.settings.day",fallback:"時間帯設定"}],"billboard":"fixed","Rotation":[90,0],brightness:{sky:15,block:15}}
summon minecraft:text_display 4.999 2.2 -26.5 {"Tags": ["lobby","lobby.text.settings","lobby.text.settings.day"],"text":[{translate:"bf.noon",fallback:"昼"}],"billboard":"fixed","Rotation":[90,0],brightness:{sky:15,block:15}}
execute as @n[tag=lobby.interact.settings.day] run function lobby:settings/toggle/day/set_display
# ゲームモード
summon minecraft:interaction -0.5 1.0 -30.499 {"Tags": ["lobby","lobby.interact.settings","lobby.interact.settings.gamemode","lobby.interact.settings.gamemode.fast"],height:3}
summon minecraft:interaction 0.5 1.0 -30.499 {"Tags": ["lobby","lobby.interact.settings","lobby.interact.settings.gamemode","lobby.interact.settings.gamemode.normal"],height:3}
summon minecraft:interaction 1.5 1.0 -30.499 {"Tags": ["lobby","lobby.interact.settings","lobby.interact.settings.gamemode","lobby.interact.settings.gamemode.bom"],height:3}
summon minecraft:text_display 0.5 4 -29.999 {"Tags": ["lobby"],"text":[{translate:"bf.lobby.settings.gamemode",fallback:"ゲームモード設定"}],"billboard":"fixed",brightness:{block:15,sky:15},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[2.0f,2.0f,2.0f]}}
summon minecraft:text_display -0.5 2.7 -29.999 {"Tags": ["lobby"],"text":[{translate:"bf.lobby.settings.gamemode.fast",fallback:"ファスト"}],"billboard":"fixed",brightness:{block:15,sky:15},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f]}}
summon minecraft:text_display 0.5 2.7 -29.999 {"Tags": ["lobby"],"text":[{translate:"bf.lobby.settings.gamemode.normal",fallback:"ノーマル"}],"billboard":"fixed",brightness:{block:15,sky:15},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f]}}
summon minecraft:text_display 1.5 2.7 -29.999 {"Tags": ["lobby"],"text":[{translate:"bf.lobby.settings.gamemode.bom",fallback:"ボム"}],"billboard":"fixed",brightness:{block:15,sky:15},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f]}}
summon minecraft:text_display -0.5 2.2 -29.999 {"Tags": ["lobby"],"text":[{translate:"bf.lobby.settings.gamemode.fast.sub",fallback:"シンプルなゲーム\n防具・回復以外がランダムに出現"}],"line_width":75,"billboard":"fixed",brightness:{block:15,sky:15},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f]}}
summon minecraft:text_display 0.5 2.2 -29.999 {"Tags": ["lobby"],"text":[{translate:"bf.lobby.settings.gamemode.normal.sub",fallback:"通常のゲーム\n全てのアイテムがランダムに出現"}],"line_width":75,"billboard":"fixed",brightness:{block:15,sky:15},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f]}}
summon minecraft:text_display 1.5 2.2 -29.999 {"Tags": ["lobby"],"text":[{translate:"bf.lobby.settings.gamemode.bom.sub",fallback:"爆弾ゲーム\n爆発ルーレットのみ出現"}],"line_width":75,"billboard":"fixed",brightness:{block:15,sky:15},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f]}}


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

# ヒントマンサン
#summon villager 0 1 0 {Tags:["lobby"],Invulnerable:1b,Passengers:[{Tags:["lobby"],view_range:0.05f,text:{color:"black",text:"ｵﾜﾀ\n＼(^o^)／"},billboard:"vertical",id:"minecraft:text_display",background:0}],Age:-2147000000}
function lobby:owata/spawn

# アイテムビューワー
summon minecraft:text_display -23 5 -4.0 {Tags:["lobby"],teleport_duration:5,text:{"text":"Item Viewer",color:"white"},transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[2f,2f,2f]}}