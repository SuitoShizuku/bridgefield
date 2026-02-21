bossbar add turn_timer_my [{translate:"bf.game.mytimer.title",fallback:"あなたのターン"}]
bossbar set turn_timer_my color blue
bossbar add turn_timer_other [{translate:"bf.game.timer.title",with:[{selector:"@p[tag=true_turn]"}],fallback:"%sのターン"}]
bossbar set turn_timer_other color red