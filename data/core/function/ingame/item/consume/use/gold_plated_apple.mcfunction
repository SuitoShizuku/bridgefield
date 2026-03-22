tellraw @a [{translate:"bf.chat.gold_plated_apple",fallback:"%sは金メッキのリンゴを食べた!",with:[{selector:"@s"}]}]
tag @s remove consumeNoTurnEnd

#死んだ判定に
function core:ingame/dead

tag @s add consume_plated_apple
function core:ingame/effect/debuff/burn/remove
function core:ingame/effect/debuff/frostbite/remove
function core:ingame/effect/debuff/blindness/remove