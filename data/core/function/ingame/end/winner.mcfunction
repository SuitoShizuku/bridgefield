$team join player.dead @a[tag=!tutorial.runner,team=!spectator,team=!player.$(team)]
title @a times 0 100t 20t
title @a subtitle [{translate:"bf.title.end.time",fallback:"5秒後にロビーに戻ります。"}]
$title @a title [{translate:"bf.title.end",fallback:"%sチームの勝ち",with:[{translate:"bf.team.$(team)",fallback:"§$(fallback)"}]}]
tellraw @a [{translate:"bf.chat.winner",fallback:"■勝者",color:"gold"}]
$tag @a[team=player.$(team)] add win_mem
function core:ingame/end/win_members
schedule function core:ingame/end/tp 5s