gamemode spectator @a[team=spectator]
gamemode spectator @a[team=player.dead]
gamemode adventure @a[team=!spectator,team=!player.dead]

execute if entity @p[team=!spectator,team=!player.dead,team=!entrant] run function core:ingame/end