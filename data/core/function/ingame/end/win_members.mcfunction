tag @r[tag=win_mem] add win_mem_temp
tellraw @a [{selector:"@p[tag=win_mem_temp]"}]
execute at @p[tag=win_mem_temp] run summon firework_rocket ~ ~ ~ {FireworksItem: {id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{has_trail:1b,shape:"large_ball",colors:[6719955,11743532,4312372,15790320]}],flight_duration:2b}}},LifeTime:20}
tag @p[tag=win_mem_temp] remove win_mem
tag @p[tag=win_mem_temp] remove win_mem_temp

execute if entity @p[tag=win_mem] run function core:ingame/end/win_members