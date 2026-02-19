# 錆びた銅用のマーカー
execute as @e[tag=block.copper.cooldown,nbt={PortalCooldown:0}] run kill @s

# ゲーム中でなければ
execute if score $now bf matches 1 run function lobby:main
# ゲーム中であれば
execute if score $now bf matches 2 run function core:ingame/main

# チーム無所属のチュートリアル後のプレイヤーを参加予定者に追加する。
execute positioned -2.0 7.0 -15.0 run team join entrant @a[dx=4,dy=4,dz=4]

execute as @a[scores={leave=1..}] run function core:leave