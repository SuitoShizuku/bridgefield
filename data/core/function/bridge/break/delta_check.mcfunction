#橋に居るプレイヤー数の差を検知したら耐久値を減らす
execute if score @s bridge.players < @s bridge.players.delta run function core:bridge/break/remove_durability

#橋プレイヤースコアの減少を検知するため現在の値のコピー
scoreboard players operation @s bridge.players.delta = @s bridge.players