scoreboard players set $temp blindness 3
execute as @a[team=!player.dead] run function core:ingame/effect/debuff/blindness/add
tellraw @a[team=!player.dead] [{translate:"bf.chat.ikatta.use",fallback:"%sがイカッた!! 戦況がわからなくなった!!",color:dark_gray,bold:true,with:[{selector:"@s"}]}]