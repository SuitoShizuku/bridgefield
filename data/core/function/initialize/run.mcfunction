# オブジェクト
function core:initialize/score
bossbar remove turn_timer_my
bossbar remove turn_timer_other
function core:initialize/bossbar
team remove player.red
team remove player.blue
team remove player.yellow
team remove player.green
team remove player.orange
team remove player.pink
team remove player.cyan
team remove player.white
team remove entrant
team remove spectator
team remove player.dead
function core:initialize/team
# ワールド
function lobby:gen
function tutorial:gen
# プレイヤー
## もしかしたらバグりそうなタグは消す
tag @a remove tutorial.runner
tag @a remove attacker
tag @a remove victim
tag @a remove punch.attacker
tag @a remove punch.victim
tag @a remove noInvClear
tag @a remove itemDropped
tag @a remove turn
tag @a remove true_turn
tag @a remove setcolor
tag @a remove red
tag @a remove blue
tag @a remove yellow
tag @a remove green
tag @a remove orange
tag @a remove pink
tag @a remove cyan
tag @a remove white
execute as @a run function core:ingame/effect/debuff/blindness/remove
execute as @a run function core:ingame/effect/debuff/burn/remove
execute as @a run function core:ingame/effect/debuff/frostbite/remove
## エフェクト
effect clear @a
effect give @a resistance infinite 4 true
effect give @a saturation infinite 0 true
effect give @a instant_health infinite 0 true
## インベントリ
clear @a
## 進捗
advancement revoke @a only core:armor_used
advancement revoke @a only core:bridge_damage_e
advancement revoke @a only core:bridge_damage_n
advancement revoke @a only core:bridge_damage_s
advancement revoke @a only core:bridge_damage_w
advancement revoke @a only core:bridge_place_e
advancement revoke @a only core:bridge_place_n
advancement revoke @a only core:bridge_place_s
advancement revoke @a only core:bridge_place_w
advancement revoke @a only core:consume_item
advancement revoke @a only core:ed
advancement revoke @a only core:fall
advancement revoke @a only core:punch_victim
advancement revoke @a only core:walking_copper
advancement revoke @a only lobby:credit/show_text
advancement revoke @a only lobby:hintman_san
advancement revoke @a only lobby:iv_iv
advancement revoke @a only lobby:iv_left
advancement revoke @a only lobby:iv_right
advancement revoke @a only lobby:map
advancement revoke @a only lobby:setting_lc
advancement revoke @a only lobby:setting_rc
advancement revoke @a only lobby:start
advancement revoke @a only tutorial:join
## 最後に全員tp
tp @a 0.5 15.0 -62.5
# 最後に通知
playsound minecraft:block.ender_chest.open master @a 0 15 -63 1 0
tellraw @a {translate:"bf.chat.initialize.run",fallback:"初期化しました",color:red,bold:true}