scoreboard objectives add bf dummy
# ゲームの状態 1でロビー 2で試合中
execute unless score $now bf matches -2147483648..2147483647 run scoreboard players set $now bf 1
# カウントダウン中か否か
execute unless score $ready bf matches -2147483648..2147483647 run scoreboard players set $ready bf 0
# ステージ
execute unless score $stage bf matches -2147483648..2147483647 run scoreboard players set $stage bf 1