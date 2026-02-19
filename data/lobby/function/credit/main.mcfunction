execute as @e[tag=lobby.text.credit] at @s run tp @s ~ ~0.05 ~
execute positioned -30 10 0 run kill @e[tag=lobby.credit,distance=2]

scoreboard players add $lobby.credit bf 1

execute if score $lobby.credit bf matches 1 run function lobby:credit/write {text:"BridgeField",bold:true,unl:false,color:white,scale:2.0,width:0,height:0,id:"",onclick:{}}

execute if score $lobby.credit bf matches 30 run function lobby:credit/write {text:"コマンド",bold:false,unl:false,color:white,scale:1.4,width:0,height:0,id:"",onclick:{}}
execute if score $lobby.credit bf matches 35 run function lobby:credit/write {text:"SuitoShizuku",bold:false,unl:false,color:white,scale:1.0,width:0.5,height:0.5,id:"",onclick:[{"text":"https://links.suitomizu.com",click_event:{action:"open_url",url:"https://links.suitomizu.com"}}]}

execute if score $lobby.credit bf matches 50.. run scoreboard players set $lobby.credit bf 0
