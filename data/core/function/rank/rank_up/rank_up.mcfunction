execute if score @s rank matches 100.. run return run execute if score @s rd.settings.notification.levelup matches 1 run function core:rank/rank_up/over_flow
execute if score @s rd.settings.notification.levelup matches 1 run function core:rank/rank_up/message
scoreboard players add @s rank 1
#このfunction単体で実行出来るように条件付きでxpを削除
execute unless score @s rank.xp < @s rank.xp.need run scoreboard players operation @s rank.xp -= @s rank.xp.need
function core:rank/rank_up/multiple