execute positioned 6.0 1.0 -4 as @a[dx=2,dy=1,dz=0.6,team=!entrant] run function lobby:game/join
execute positioned 6.0 1.0 3.4 as @a[dx=2,dy=1,dz=0.6,team=!spectator] run function lobby:game/leave
title @a[team=spectator] actionbar [{"translate":"bf.lobby.spectator",fallback:"リソースパックを導入してください"}]

gamemode adventure @a[gamemode=spectator]