team join player.dead @s
tag @s remove turn
tag @s remove true_turn
function core:ingame/effect/debuff/burn/remove
function core:ingame/effect/debuff/frostbite/remove
function core:ingame/effect/debuff/blindness/remove
# 残りチーム数が勝利条件通りである場合、ゲームエンドとする。
# execute if function core:ingame/gameend_check run return run function core:ingame/end