tellraw @a [{translate:"bf.chat.gold_plated_apple",fallback:"%sは金メッキのリンゴを食べた!",with:[{selector:"@s"}]}]
tag @s remove consumeNoTurnEnd
team join spectator @s
tag @s remove turn
tag @s remove true_turn
tag @s add consume_plated_apple