execute if score @s status.hp matches ..0 run tellraw @a[tag=!blindness] {translate:"bf.chat.prank.death",fallback:"%1$sは神のいたずらに耐えられなかった",with:[{selector:"@s"}],color:red}
execute if score @s status.hp matches ..0 run tellraw @p[tag=blindness,tag=true_turn] {translate:"bf.chat.prank.death",fallback:"%1$sは神のいたずらに耐えられなかった",with:[{selector:"@s"}],color:red}
execute if score @s status.hp matches ..0 run return run tellraw @s[tag=blindness] {translate:"bf.chat.prank.death",fallback:"%1$sは神のいたずらに耐えられなかった",with:[{selector:"@s"}],color:red}
execute store result score $temp status.hp run random value 20..40
scoreboard players operation @s status.hp += $temp status.hp
tellraw @a[tag=!blindness] {translate:"bf.chat.prank",fallback:"%1$sが神のいたずらに耐えた!(HP+%2$s)",with:[{selector:"@s"},{score:{name:"$temp",objective:"status.hp"}}],color:green}
tellraw @p[tag=blindness,tag=true_turn] {translate:"bf.chat.prank",fallback:"%1$sが神のいたずらに耐えた!(HP+%2$s)",with:[{selector:"@s"},{score:{name:"$temp",objective:"status.hp"}}],color:green}
tellraw @s[tag=blindness] {translate:"bf.chat.prank",fallback:"%1$sが神のいたずらに耐えた!(HP+%2$s)",with:[{selector:"@s"},{score:{name:"$temp",objective:"status.hp"}}],color:green}