# 錆びた銅用のマーカー
execute as @e[tag=block.copper.cooldown,nbt={PortalCooldown:0}] run kill @s

# ゲーム中でなければ
execute if score $now bf matches 1 run function lobby:main
# ゲーム中であれば
execute if score $now bf matches 2 run function core:ingame/main

# チュートリアル
execute if entity @p[tag=tutorial.runner] run function tutorial:main
# チーム無所属のチュートリアル後のプレイヤーを参加予定者に追加する。
execute if entity @p[tag=tutorial.runner] positioned -2.0 7.0 -15.0 as @a[dx=4,dy=4,dz=4] run function core:leave_tutorial

# 入った時
execute as @a[scores={leave=1..}] run function core:leave
execute as @a unless score @s leave matches -2147483648..2147483647 run function tutorial:join