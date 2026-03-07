tellraw @s {"text":"----------[Rank]----------",color:gray}
tellraw @s [{"text":"現在のランク : ",color:white},{"score":{objective:"rank",name:"@s"},color:green,bold:true}]
tellraw @s [{"text":"XP : ",color:white},{"score":{objective:"rank.xp",name:"@s"},color:green,bold:true},{"text":"XP",color:green,bold:true}]