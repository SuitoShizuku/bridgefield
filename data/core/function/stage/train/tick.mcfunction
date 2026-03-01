scoreboard players remove $train.ct bf 1
execute if score $train.ct bf matches ..0 run function core:stage/train/summon
execute if score $train.move bf matches 1.. run function core:stage/train/move