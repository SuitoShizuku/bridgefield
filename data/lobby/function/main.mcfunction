execute positioned 6.0 1.0 -4 as @a[dx=2,dy=1,dz=0.6,team=!entrant] run function lobby:game/join
execute positioned 6.0 1.0 3.4 as @a[dx=2,dy=1,dz=0.6,team=!spectator] run function lobby:game/leave
execute positioned 6.0 1.0 -4 as @a[dx=2,dy=1,dz=0.6,tag=setcolor] run function lobby:game/join
execute positioned 10.0 1.0 -4 as @a[dx=2,dy=1,dz=0.6,tag=!red] run function lobby:game/incolor {color:"red"}
execute positioned 10.0 1.0 3.4 as @a[dx=2,dy=1,dz=0.6,tag=!blue] run function lobby:game/incolor {color:"blue"}
execute positioned 14.0 1.0 -4 as @a[dx=2,dy=1,dz=0.6,tag=!yellow] run function lobby:game/incolor {color:"yellow"}
execute positioned 14.0 1.0 3.4 as @a[dx=2,dy=1,dz=0.6,tag=!green] run function lobby:game/incolor {color:"green"}
execute positioned 18.0 1.0 -4 as @a[dx=2,dy=1,dz=0.6,tag=!orange] run function lobby:game/incolor {color:"orange"}
execute positioned 18.0 1.0 3.4 as @a[dx=2,dy=1,dz=0.6,tag=!pink] run function lobby:game/incolor {color:"pink"}
execute positioned 22.0 1.0 -4 as @a[dx=2,dy=1,dz=0.6,tag=!cyan] run function lobby:game/incolor {color:"cyan"}
execute positioned 22.0 1.0 3.4 as @a[dx=2,dy=1,dz=0.6,tag=!white] run function lobby:game/incolor {color:"white"}
title @a[team=spectator] actionbar [{"translate":"bf.lobby.spectator",fallback:"あなたは今観戦者です",color:gray}]
title @a[tag=red] actionbar [{"translate":"bf.lobby.red",fallback:"あなたは§c赤チーム§rに入る予定です",color:gray}]
title @a[tag=blue] actionbar [{"translate":"bf.lobby.blue",fallback:"あなたは§9青チーム§rに入る予定です",color:gray}]
title @a[tag=yellow] actionbar [{"translate":"bf.lobby.yellow",fallback:"あなたは§e黄チーム§rに入る予定です",color:gray}]
title @a[tag=green] actionbar [{"translate":"bf.lobby.green",fallback:"あなたは§a緑チーム§rに入る予定です",color:gray}]
title @a[tag=orange] actionbar [{"translate":"bf.lobby.orange",fallback:"あなたは§6橙チーム§rに入る予定です",color:gray}]
title @a[tag=pink] actionbar [{"translate":"bf.lobby.pink",fallback:"あなたは§d桃チーム§rに入る予定です",color:gray}]
title @a[tag=cyan] actionbar [{"translate":"bf.lobby.cyan",fallback:"あなたは§3水チーム§rに入る予定です",color:gray}]
title @a[tag=white] actionbar [{"translate":"bf.lobby.white",fallback:"あなたは§f白チーム§rに入る予定です",color:gray}]

gamemode adventure @a[gamemode=spectator,team=!player.dead]
gamemode spectator @a[team=player.dead]

function lobby:credit/main
function lobby:minigame/slot/main
function lobby:minigame/bridge/particle
function lobby:item_viewer/main

# マッププレビュー
execute positioned 101 32 75 run function lobby:settings/maps/preview/effect/2
function lobby:settings/maps/preview/return

#music_selector
function lobby:settings/music/main

#rd
function lobby:rank_display/main