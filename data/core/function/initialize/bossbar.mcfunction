bossbar add turn_timer_my ""
bossbar set turn_timer_my name [{translate:"bf.game.mytimer.title",fallback:"あなたのターン (%sラウンド目)",with:[{score:{name:"$round",objective:"bf"}}]}]
bossbar set turn_timer_my color blue
bossbar add turn_timer_other ""
bossbar set turn_timer_other name [{translate:"bf.game.timer.title",with:[{selector:"@p[tag=true_turn]"},{score:{name:"$round",objective:"bf"}}],fallback:"%1$sのターン (%2$sラウンド目)"}]
bossbar set turn_timer_other color red