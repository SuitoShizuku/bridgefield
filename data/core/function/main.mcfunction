# 錆びた銅用のマーカー
execute as @e[tag=block.copper.cooldown,nbt={PortalCooldown:0}] run kill @s

# ゲーム中でなければ
execute if score $now bf matches 1 run function lobby:main
# ゲーム中であれば
execute if score $now bf matches 2 run function core:ingame/main

# 電車召喚
execute positioned 85 18 342 if entity @a[distance=..75] run function core:stage/train/tick

# チュートリアル
execute if entity @p[tag=tutorial.runner] run function tutorial:main
# チーム無所属のチュートリアル後のプレイヤーを参加予定者に追加する。
execute if entity @p[tag=tutorial.runner] positioned -2.0 7.0 -15.0 as @a[dx=4,dy=4,dz=4] run function core:leave_tutorial

execute as @a if score @s rc_ct matches 1.. run scoreboard players remove @s rc_ct 1

# 入った時
execute as @a[scores={leave=1..}] run function core:leave
execute as @a unless score @s leave matches -2147483648..2147483647 run function tutorial:join