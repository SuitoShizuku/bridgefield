tellraw @s {"text":"----------[Ranking]----------",color:gray}
tellraw @s [{"text":"1位 : "},{selector:"@n[tag=ranking.1]",color:gold,bold:true},{score:{objective:rank.ranking,name:"$1"},color:green,bold:true},{text:"Lv",color:gray,bold:true}]
tellraw @s [{"text":"2位 : "},{selector:"@n[tag=ranking.2]",color:gold,bold:true},{score:{objective:rank.ranking,name:"$2"},color:green,bold:true},{text:"Lv",color:gray,bold:true}]
tellraw @s [{"text":"3位 : "},{selector:"@n[tag=ranking.3]",color:gold,bold:true},{score:{objective:rank.ranking,name:"$3"},color:green,bold:true},{text:"Lv",color:gray,bold:true}]
tellraw @s [{"text":"4位 : "},{selector:"@n[tag=ranking.4]",color:gold,bold:true},{score:{objective:rank.ranking,name:"$4"},color:green,bold:true},{text:"Lv",color:gray,bold:true}]
tellraw @s [{"text":"5位 : "},{selector:"@n[tag=ranking.5]",color:gold,bold:true},{score:{objective:rank.ranking,name:"$5"},color:green,bold:true},{text:"Lv",color:gray,bold:true}]