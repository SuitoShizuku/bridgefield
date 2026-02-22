execute positioned 6.0 1.0 -4 as @a[dx=2,dy=1,dz=0.6,team=!entrant] run function lobby:game/join
execute positioned 6.0 1.0 3.4 as @a[dx=2,dy=1,dz=0.6,team=!spectator] run function lobby:game/leave
title @a[team=spectator] actionbar [{"translate":"bf.lobby.spectator",fallback:"あなたは今観戦者です",color:red}]

gamemode adventure @a[gamemode=spectator]

function lobby:credit/main
function lobby:minigame/slot/main
function lobby:item_viewer/main