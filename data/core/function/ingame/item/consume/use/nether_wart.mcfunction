summon text_display ~ ~ ~ {Tags:["game","game.treasure.waiting","game.treasure.waiting.init"],text:[{translate:"bf.item.consume.nether_wart.entity",fallback:"宝箱設置まで\n"},{translate:"bf.round",fallback:"%sラウンド",with:[{text:"5"}]}]}
scoreboard players set @n[tag=game.treasure.waiting.init] bf 5
tag @n[tag=game.treasure.waiting.init] remove game.treasure.waiting.init