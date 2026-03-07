scoreboard players add @s rank 1
#このfunction単体で実行出来るように条件付きでxpを削除
execute unless score @s rank.xp < @s rank.xp.need run scoreboard players operation @s rank.xp -= @s rank.xp.need
function core:rank/rank_up/multiple