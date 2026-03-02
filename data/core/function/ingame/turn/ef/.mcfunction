execute store result score $temp bf run random value 1..51
execute if score $temp bf matches 1..10 run function core:ingame/turn/ef/1
execute if score $temp bf matches 11..20 run function core:ingame/turn/ef/2
execute if score $temp bf matches 21..30 run function core:ingame/turn/ef/3
execute if score $temp bf matches 31..40 run function core:ingame/turn/ef/1
execute if score $temp bf matches 41..50 run function core:ingame/turn/ef/2
execute if score $temp bf matches 51 run function core:ingame/turn/ef/3
# 死んでないかチェック
function core:ingame/deathcheck