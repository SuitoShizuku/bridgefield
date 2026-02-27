execute if score $treasure bf matches 1 run setblock ~ ~2 ~ lime_wool
execute if score $treasure bf matches 2 run setblock ~ ~2 ~ red_wool
execute if score $treasure bf matches 1 run return run data modify entity @n[tag=lobby.text.settings.treasure] text set value [{translate:"bf.on",fallback:"オン"}]
execute if score $treasure bf matches 2 run return run data modify entity @n[tag=lobby.text.settings.treasure] text set value [{translate:"bf.off",fallback:"オフ"}]