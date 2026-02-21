setblock 0 2 5 minecraft:waxed_copper_bulb[lit=false]
data modify entity @n[type=text_display,tag=lobby.text.start] text set value [{translate:"bf.lobby.start",fallback:"右クリックでスタート"}]
scoreboard players set $ready bf 0
schedule clear core:start/count_0
schedule clear core:start/count_1
schedule clear core:start/count_2
schedule clear core:start/count_3
schedule clear core:start/count_4
schedule clear core:start/count_5