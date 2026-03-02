scoreboard objectives remove bf
scoreboard objectives remove leave
scoreboard objectives remove durability
scoreboard objectives remove status.hp
scoreboard objectives remove status.mp
scoreboard objectives remove status.build
scoreboard objectives remove defense
scoreboard objectives remove armor_count
scoreboard objectives remove bridge.players
scoreboard objectives remove bridge.players.delta
scoreboard objectives remove iv

scoreboard objectives add bf dummy
# ゲームの状態 1でロビー 2で試合中
execute unless score $now bf matches -2147483648..2147483647 run scoreboard players set $now bf 1
# カウントダウン中か否か
execute unless score $ready bf matches -2147483648..2147483647 run scoreboard players set $ready bf 0
# ステージ
execute unless score $stage bf matches -2147483648..2147483647 run scoreboard players set $stage bf 1
execute unless score $stage.max bf matches -2147483648..2147483647 run scoreboard players set $stage.max bf 6
## 電車
execute unless score $train.move bf matches -2147483648..2147483647 run scoreboard players set $train.move bf 0
execute unless score $train.ct bf matches -2147483648..2147483647 run scoreboard players set $train.ct bf 200
# タイマー
execute unless score $turn_time bf matches -2147483648..2147483647 run scoreboard players set $turn_time bf 400
# ゲームモード
execute unless score $gamemode bf matches -2147483648..2147483647 run scoreboard players set $gamemode bf 1
# チーム最大
execute unless score $max_teams bf matches -2147483648..2147483647 run scoreboard players set $max_teams bf 8
# 終末の時
execute unless score $EF bf matches -2147483648..2147483647 run scoreboard players set $EF bf 100
# 時間帯
execute unless score $day bf matches -2147483648..2147483647 run scoreboard players set $day bf 1
# 宝箱
execute unless score $treasure bf matches -2147483648..2147483647 run scoreboard players set $treasure bf 1
# 定数
scoreboard players set #3 bf 3
scoreboard players set #20 bf 20
scoreboard players set #60 bf 60

# ゲーム離脱検知用
scoreboard objectives add leave custom:leave_game
## これを未定にしてしまうとプレイヤーが初期化される
scoreboard players set @a leave 0

# 行動順
scoreboard objectives add initiative dummy "行動値"
# 橋の耐久値
scoreboard objectives add durability dummy "耐久値"
# HP値
scoreboard objectives add status.hp dummy "体力値"
# MP値
scoreboard objectives add status.mp dummy "経験値"
# Build値
scoreboard objectives add status.build dummy "資源値"
# 防御力
scoreboard objectives add defense dummy "防御力"
# 装備の重ね着数
scoreboard objectives add armor_count dummy "装備の重ね着数"
# 橋のプレイヤー数
scoreboard objectives add bridge.players dummy "橋のプレイヤー数"
# 橋のプレイヤー数差検知用
scoreboard objectives add bridge.players.delta dummy "橋のプレイヤー数の差検知用"

# デバフ用
scoreboard objectives add blindness dummy "盲目"

# アイテムビューワー用
scoreboard objectives add iv dummy "アイテムビューワー"

# explode_decoy用
scoreboard objectives add ed dummy "爆発デコイカウンター"
scoreboard objectives add ed_random dummy "爆発デコイランダム"

# 純金リンゴ用
scoreboard objectives add pure_gold_apple dummy "純金リンゴカウンター"
