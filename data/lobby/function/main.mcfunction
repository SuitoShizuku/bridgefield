execute positioned 6.0 1.0 -4 as @a[dx=2,dy=1,dz=0.6,team=!entrant] run function lobby:game/join
execute positioned 6.0 1.0 3.4 as @a[dx=2,dy=1,dz=0.6,team=!spectator] run function lobby:game/leave
execute positioned 10.0 1.0 -4 as @a[dx=2,dy=1,dz=0.6,team=entrant] run function lobby:game/incolor {color:"red"}
execute positioned 10.0 1.0 3.4 as @a[dx=2,dy=1,dz=0.6,team=entrant] run function lobby:game/incolor {color:"blue"}
execute positioned 14.0 1.0 -4 as @a[dx=2,dy=1,dz=0.6,team=entrant] run function lobby:game/incolor {color:"yellow"}
execute positioned 14.0 1.0 3.4 as @a[dx=2,dy=1,dz=0.6,team=entrant] run function lobby:game/incolor {color:"green"}
execute positioned 18.0 1.0 -4 as @a[dx=2,dy=1,dz=0.6,team=entrant] run function lobby:game/incolor {color:"orange"}
execute positioned 18.0 1.0 3.4 as @a[dx=2,dy=1,dz=0.6,team=entrant] run function lobby:game/incolor {color:"pink"}
execute positioned 22.0 1.0 -4 as @a[dx=2,dy=1,dz=0.6,team=entrant] run function lobby:game/incolor {color:"cyan"}
execute positioned 22.0 1.0 3.4 as @a[dx=2,dy=1,dz=0.6,team=entrant] run function lobby:game/incolor {color:"white"}
title @a[team=spectator] actionbar [{"translate":"bf.lobby.spectator",fallback:"あなたは今観戦者です",color:red}]
title @a[tag=red,team=entrant] actionbar [{"translate":"bf.lobby.red",fallback:"あなたは赤チームに入る予定です",color:white}]
title @a[tag=blue,team=entrant] actionbar [{"translate":"bf.lobby.blue",fallback:"あなたは青チームに入る予定です",color:white}]
title @a[tag=yellow,team=entrant] actionbar [{"translate":"bf.lobby.yellow",fallback:"あなたは黄チームに入る予定です",color:white}]
title @a[tag=green,team=entrant] actionbar [{"translate":"bf.lobby.green",fallback:"あなたは緑チームに入る予定です",color:white}]
title @a[tag=orange,team=entrant] actionbar [{"translate":"bf.lobby.orange",fallback:"あなたは橙チームに入る予定です",color:white}]
title @a[tag=pink,team=entrant] actionbar [{"translate":"bf.lobby.pink",fallback:"あなたは桃チームに入る予定です",color:white}]
title @a[tag=cyan,team=entrant] actionbar [{"translate":"bf.lobby.cyan",fallback:"あなたは水チームに入る予定です",color:white}]
title @a[tag=white,team=entrant] actionbar [{"translate":"bf.lobby.white",fallback:"あなたは白チームに入る予定です",color:white}]

gamemode adventure @a[gamemode=spectator]

function lobby:credit/main
function lobby:minigame/slot/main
function lobby:item_viewer/main