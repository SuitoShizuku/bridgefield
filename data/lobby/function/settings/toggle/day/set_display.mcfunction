execute if score $day bf matches 1 run time set 6000
execute if score $day bf matches 2 run time set 12000
execute if score $day bf matches 3 run time set 18000
execute if score $day bf matches 1 run return run data modify entity @n[tag=lobby.text.settings.day] text set value [{translate:"bf.noon",fallback:"昼"}]
execute if score $day bf matches 2 run return run data modify entity @n[tag=lobby.text.settings.day] text set value [{translate:"bf.evening",fallback:"夕"}]
execute if score $day bf matches 3 run return run data modify entity @n[tag=lobby.text.settings.day] text set value [{translate:"bf.night",fallback:"夜"}]