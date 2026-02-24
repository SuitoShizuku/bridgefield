# Repeat防止
summon marker -12.5 4.0 -8.0 {Tags:["lobby","lobby.minigame.slot"]}

execute store result storage bf:minigame slot.1 int 1 positioned -13.0 2.5 -8.0 as @n[tag=lobby.minigame.slot.1] run function lobby:minigame/slot/get_slo
execute store result storage bf:minigame slot.2 int 1 positioned -12.0 2.5 -8.0 as @n[tag=lobby.minigame.slot.2] run function lobby:minigame/slot/get_slo
execute store result storage bf:minigame slot.3 int 1 positioned -11.0 2.5 -8.0 as @n[tag=lobby.minigame.slot.3] run function lobby:minigame/slot/get_slo

execute if data storage bf:minigame {slot:{1:1,2:1,3:1}} run return run playsound entity.player.levelup player @a -12 2 -7 1 1 0
execute if data storage bf:minigame {slot:{1:2,2:2,3:2}} run return run playsound entity.player.levelup player @a -12 2 -7 1 1 0
execute if data storage bf:minigame {slot:{1:3,2:3,3:3}} run return run playsound entity.player.levelup player @a -12 2 -7 1 1 0
execute if data storage bf:minigame {slot:{1:4,2:4,3:4}} run return run playsound entity.player.levelup player @a -12 2 -7 1 1 0
execute if data storage bf:minigame {slot:{1:5,2:5,3:5}} run return run playsound entity.player.levelup player @a -12 2 -7 1 1 0
execute if data storage bf:minigame {slot:{1:6,2:6,3:6}} run return run playsound entity.player.levelup player @a -12 2 -7 1 1 0
execute if data storage bf:minigame {slot:{1:7,2:7,3:7}} run return run playsound entity.player.levelup player @a -12 2 -7 1 1 0
execute if data storage bf:minigame {slot:{1:8,2:8,3:8}} run return run playsound entity.player.levelup player @a -12 2 -7 1 1 0