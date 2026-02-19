execute as @e[tag=lobby.text.credit] at @s run tp @s ~ ~0.025 ~
execute positioned -30.0 10.0 0.5 run kill @e[tag=lobby.credit,distance=..2]

scoreboard players add $lobby.credit bf 1

execute if score $lobby.credit bf matches 1 run function lobby:credit/write {text:"BridgeField",bold:true,unl:false,color:white,scale:2.0,width:0,height:0,id:"",onclick:{}}

execute if score $lobby.credit bf matches 70 run function lobby:credit/write {text:"企画",bold:false,unl:false,color:white,scale:1.4,width:0,height:0,id:"",onclick:{}}
execute if score $lobby.credit bf matches 78 run function lobby:credit/write {text:"SuitoShizuku",bold:false,unl:false,color:white,scale:1.0,width:0.5,height:0.5,id:"show_text",onclick:[{"text":"https://links.suitomizu.com",click_event:{action:"open_url",url:"https://links.suitomizu.com"}}]}

execute if score $lobby.credit bf matches 120 run function lobby:credit/write {text:"コマンド",bold:false,unl:false,color:white,scale:1.4,width:0,height:0,id:"",onclick:{}}
execute if score $lobby.credit bf matches 128 run function lobby:credit/write {text:"SuitoShizuku",bold:false,unl:false,color:white,scale:1.0,width:0.5,height:0.5,id:"show_text",onclick:[{"text":"https://links.suitomizu.com",click_event:{action:"open_url",url:"https://links.suitomizu.com"}}]}

execute if score $lobby.credit bf matches 170 run function lobby:credit/write {text:"建築",bold:false,unl:false,color:white,scale:1.4,width:0,height:0,id:"",onclick:{}}
execute if score $lobby.credit bf matches 178 run function lobby:credit/write {text:"Michaelnear",bold:false,unl:false,color:white,scale:1.0,width:0,height:0,id:"",onclick:{}}

# 大体220の余白欲しい
execute if score $lobby.credit bf matches 398.. run scoreboard players set $lobby.credit bf 0
