execute if score @s rank matches 100.. run return run function core:rank/rank_up/over_flow
scoreboard players add @s rank 1
#このfunction単体で実行出来るように条件付きでxpを削除
execute unless score @s rank.xp < @s rank.xp.need run scoreboard players operation @s rank.xp -= @s rank.xp.need
function core:rank/rank_up/multiple

function core:rank/rank_up/message
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 0.1 1
particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 1 1000 normal @s