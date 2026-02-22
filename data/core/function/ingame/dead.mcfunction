team join player.dead @s
tag @s remove turn
tag @s remove true_turn
# 残りチーム数が勝利条件通りである場合、ゲームエンドとする。
execute if function core:ingame/gameend_check run return run function core:ingame/end