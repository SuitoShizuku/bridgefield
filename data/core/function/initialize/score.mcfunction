scoreboard objectives add bf dummy
# ゲームの状態 1でロビー 2で試合中
execute unless score $now bf matches -2147483648..2147483647 run scoreboard players set $now bf 1
# カウントダウン中か否か
execute unless score $ready bf matches -2147483648..2147483647 run scoreboard players set $ready bf 0
# ステージ
execute unless score $stage bf matches -2147483648..2147483647 run scoreboard players set $stage bf 1
# タイマー
execute unless score $turn_time bf matches -2147483648..2147483647 run scoreboard players set $turn_time bf 400
# ゲーム離脱検知用
scoreboard objectives add leave custom:leave_game
# 行動順
scoreboard objectives add initiative dummy "行動値"
# 橋の耐久値
scoreboard objectives add durability dummy "耐久値"
# HP値
scoreboard objectives add status.hp dummy "HP"
# MP値
scoreboard objectives add status.mp dummy "MP"
# Build値
scoreboard objectives add status.build dummy "資源値"