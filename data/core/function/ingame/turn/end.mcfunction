tag @s remove turn
tag @s remove true_turn
attribute @s movement_speed modifier add false_turn -1 add_multiplied_total
attribute @s jump_strength modifier add false_turn -1 add_multiplied_total
attribute @s entity_interaction_range modifier add false_turn -1 add_multiplied_total
attribute @s block_interaction_range modifier add false_turn -1 add_multiplied_total

# アイテムのリロール
loot give @s loot core:root
# 残りチーム数が勝利条件通りである場合、ゲームエンドとする。
execute if function core:ingame/turn/gameend_check run return run function core:ingame/end
# ゲーム終了条件を満たさない場合は次にターンに渡す
function core:ingame/round/find_turn