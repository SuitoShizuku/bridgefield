bossbar add turn_timer_my [{translate:"bf.game.mytimer.title",fallback:"リソースパックを導入してください"}]
bossbar set turn_timer_my color blue
bossbar add turn_timer_other [{translate:"bf.game.timer.title",with:[{selector:"@p[tag=true_turn]"}],fallback:"リソースパックを導入してください"}]
bossbar set turn_timer_other color red