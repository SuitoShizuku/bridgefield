gamemode spectator @a[team=spectator]
gamemode spectator @a[team=player.dead]
gamemode adventure @a[team=!spectator,team=!player.dead]

execute unless entity @a[tag=true_turn] run function core:ingame/round/find_turn

scoreboard players remove $turn_time_count bf 1
execute store result bossbar turn_timer_my value run scoreboard players get $turn_time_count bf
execute store result bossbar turn_timer_other value run scoreboard players get $turn_time_count bf
execute if score $turn_time_count bf matches ..-1 as @p[tag=true_turn] run function core:ingame/turn/end

execute as @a run title @s actionbar [{translate:"bf.status.actionbar",fallback:"§c体力値: %1$s | §9経験値: %2$s | §a資源値: %3$s",with:[{score:{name:"@s",objective:"status.hp"},color:red},{score:{name:"@s",objective:"status.mp"},color:blue},{score:{name:"@s",objective:"status.build"},color:green}]}]

# 橋の耐久値減少
execute as @e[tag=game.bridge.durability,type=marker] at @s run function core:bridge/break/main