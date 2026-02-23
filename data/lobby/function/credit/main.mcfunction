# モーション、見えないところまで行ったらkill
scoreboard players add $lobby.credit bf 1
execute as @e[tag=lobby.text.credit] at @s run tp @s ~ ~0.025 ~
execute positioned -30.0 10.0 0.5 run kill @e[tag=lobby.credit,distance=..2]



# クレジット情報

execute if score $lobby.credit bf matches 1 run function lobby:credit/write {text:"BridgeField",bold:true,unl:false,color:white,scale:2.0,width:0,height:0,id:"",onclick:{}}

execute if score $lobby.credit bf matches 70 run function lobby:credit/write {text:"企画",bold:false,unl:false,color:white,scale:1.4,width:0,height:0,id:"",onclick:{}}
execute if score $lobby.credit bf matches 78 run function lobby:credit/write_user {text:"SuitoShizuku",bold:false,unl:false,color:white,scale:1.0,width:0.5,height:0.25,UUID:[I;1209038513,573722363,-1165139105,656062998],\
    id:"show_text",onclick:[{"text":"Minecraft: zKtn\nX: ",color:white,underlined:false},{"text":"@SuitoShizuku",click_event:{action:"open_url",url:"https://x.com/SuitoShizuku"},color:blue,underlined:true},{"text":"\nHP: ",color:white,underlined:false},{"text":"https://links.suitomizu.com",click_event:{action:"open_url",url:"https://links.suitomizu.com"},color:blue,underlined:true}]}

execute if score $lobby.credit bf matches 120 run function lobby:credit/write {text:"コマンド",bold:false,unl:false,color:white,scale:1.4,width:0,height:0,id:"",onclick:{}}
execute if score $lobby.credit bf matches 128 run function lobby:credit/write {text:"SuitoShizuku",bold:false,unl:false,color:white,scale:1.0,width:0.5,height:0.25,UUID:[I;1209038513,573722363,-1165139105,656062998],\
    id:"show_text",onclick:[{"text":"Minecraft: zKtn\nX: ",color:white,underlined:false},{"text":"@SuitoShizuku",click_event:{action:"open_url",url:"https://x.com/SuitoShizuku"},color:blue,underlined:true},{"text":"\nHP: ",color:white,underlined:false},{"text":"https://links.suitomizu.com",click_event:{action:"open_url",url:"https://links.suitomizu.com"},color:blue,underlined:true}]}
execute if score $lobby.credit bf matches 136 run function lobby:credit/write_user {text:"AASAsan",bold:false,unl:false,color:white,scale:1.0,width:0,height:0,id:"",onclick:{},UUID:[I;-234336003,-365148894,-1953141326,-1225552412]}

execute if score $lobby.credit bf matches 170 run function lobby:credit/write {text:"建築",bold:false,unl:false,color:white,scale:1.4,width:0,height:0,id:"",onclick:{}}
execute if score $lobby.credit bf matches 178 run function lobby:credit/write_user {text:"Michaelnear",bold:false,unl:false,color:white,scale:1.0,width:0,height:0,id:"",onclick:{},UUID:[I;1465439054,-980071912,-1780221564,-1175707027]}

# 最後にループ
# 大体220の余白欲しい
execute if score $lobby.credit bf matches 398.. run scoreboard players set $lobby.credit bf 0
