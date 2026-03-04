gamemode spectator @a[team=spectator]
gamemode spectator @a[team=player.dead]
gamemode adventure @a[team=!spectator,team=!player.dead]

# ターンに回ってきているプレイヤーが居なければ、スキップする
execute unless entity @a[tag=true_turn] run function core:ingame/round/find_turn

# ターンの制限時間
scoreboard players remove $turn_time_count bf 1
execute store result bossbar turn_timer_my value run scoreboard players get $turn_time_count bf
execute store result bossbar turn_timer_other value run scoreboard players get $turn_time_count bf
execute if score $turn_time_count bf matches ..-1 as @p[tag=true_turn] run function core:ingame/turn/end


# ステータス表示
execute as @a[team=!player.dead,team=!spectator,tag=!tutorial.runner] run title @s actionbar [{translate:"bf.actionbar.status",fallback:"§c体力値: %1$s | §9経験値: %2$s | §a資源値: %3$s",with:[{score:{name:"@s",objective:"status.hp"},color:red},{score:{name:"@s",objective:"status.mp"},color:blue},{score:{name:"@s",objective:"status.build"},color:green}]}]

# 橋の耐久値減少
execute as @e[tag=game.bridge.durability,type=marker,tag=!durability.damaged] at @s run function core:bridge/break/main

#アイテムドロップ検知
function core:ingame/item/drop/main

# デバフとか
execute as @a at @s run function core:ingame/effect/run_tick

# 橋破壊系アイテム
execute as @a at @s if items entity @s weapon.mainhand *[minecraft:custom_data~{bridgeBreakable:true}] at @e[tag=game.interact.bridge,distance=..10,sort=nearest,limit=10] run particle dust{color:[1.0,0.0,0.0],scale:1.0} ~ ~2 ~ 0.3 0 0.3 0 2 normal @s

# 爆発デコイの処理
execute if entity @n[type=villager,tag=ed] run function core:ingame/item/explode_decoy/main

# 宝箱の破壊
function core:stage/chest/break/

# リロール商人がこっち向くように
execute if entity @n[tag=reroll_trader] run function core:ingame/item/consume/use/reroll_trader/main