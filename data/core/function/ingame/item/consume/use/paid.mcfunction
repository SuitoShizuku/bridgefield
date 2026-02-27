tag @s add paid_item

#メッセージ
tellraw @s [{"text":"課金されて次からのの装備の見た目が金装備に！","color":"yellow",bold:true},{"text":"\n※ただし、見た目が変わるだけで性能は変わらないぞ！","color":"gray",bold:false}]

#play sound
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 2 0.1