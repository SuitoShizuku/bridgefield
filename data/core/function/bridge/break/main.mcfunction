# @AASA
# @e[tag=game.bridge.durability,type=marker]が実行 (as, at @s)

#橋に居るプレイヤーの差を検知
function core:bridge/break/delta_check

#橋に居るプレイヤー数を橋プレイヤースコアに代入
execute positioned ~-2 ~-9 ~-2 store result score @s bridge.players if entity @a[dx=3,dy=15,dz=3,gamemode=!spectator]