tellraw @s {"text":"----------[Rank]----------",color:gray}
tellraw @s [{"text":"現在のランク : ",color:white},{"score":{objective:"rank",name:"@s"},color:dark_green,bold:true}]
tellraw @s [{"text":"現在のXP : ",color:white},{"score":{objective:"rank.xp",name:"@s"},color:green,bold:true},{"text":"/",color:gray,bold:true},{"score":{objective:"rank.xp.need",name:"@s"},color:green,bold:true},{"text":"XP",color:dark_green,bold:true}]
tellraw @s [{"text":"取得XP倍率 : ",color:white},{"text":"取得経験値 = (獲得経験値 × ",color:gray,bold:true},{"score":{objective:"rank.xp.multiple",name:"@s"},color:green,bold:true},{"text":" ÷ 10)",color:gray,bold:true}]
#(取得経験値 × 倍率 ÷ 10)