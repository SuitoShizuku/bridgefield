scoreboard players remove $train.ct bf 1
execute if score $train.ct bf matches 20 run playsound bf:entity.train.passing master @a 85.5 6.0 342.5 1 1
execute if score $train.ct bf matches ..0 run function core:stage/train/summon
execute if score $train.move bf matches 1.. run function core:stage/train/move