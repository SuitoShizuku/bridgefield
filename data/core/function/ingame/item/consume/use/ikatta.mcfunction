scoreboard players set $temp blindness 3
execute as @a run function core:ingame/effect/debuff/blindness/add
tellraw @a [{translate:"bf.chat.ikatta.use",fallback:"%sがイカッた!! 戦況がわからなくなった!!",color:dark_gray,bold:true}]