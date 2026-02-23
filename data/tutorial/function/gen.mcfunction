kill @e[tag=tutorial]
# 案内テキスト召喚
summon minecraft:text_display 0.5 17.0 -53.5 {"Tags":["tutorial"],"view_range":0.05,"text":{translate:"bf.tutorial.1.title",fallback:"橋を架けて進みましょう"},"Rotation":[180,0],transformation:{left_rotation:[0.0,0.0,0.0,1.0],right_rotation:[0.0,0.0,0.0,1.0],translation:[0.0,0.0,0.0],scale:[2.0,2.0,2.0]},background:-2013265920}
summon minecraft:text_display 0.5 16.3 -53.5 {"Tags":["tutorial"],"view_range":0.05,"text":{translate:"bf.tutorial.1.text",fallback:"足元の§a緑のパーティクル§rは、\n橋が設置可能なことを表しています。"},"Rotation":[180,0],background:-2013265920}
summon minecraft:text_display 0.5 17.5 -43.5 {"Tags":["tutorial"],"view_range":0.05,"text":{translate:"bf.tutorial.2.title",fallback:"橋の耐久値"},"Rotation":[180,0],transformation:{left_rotation:[0.0,0.0,0.0,1.0],right_rotation:[0.0,0.0,0.0,1.0],translation:[0.0,0.0,0.0],scale:[2.0,2.0,2.0]},background:-2013265920}
summon minecraft:text_display 0.5 16.3 -43.5 {"Tags":["tutorial"],"view_range":0.05,"text":{translate:"bf.tutorial.2.text",fallback:"橋に乗っている人が減る度に、\n橋は耐久値が1減少します。\n耐久値が0になってしまった場合、橋は§b破壊§rされます。"},"Rotation":[180,0],background:-2013265920}
summon minecraft:text_display 0.5 17.5 -31.5 {"Tags":["tutorial"],"view_range":0.05,"text":{translate:"bf.tutorial.2.title",fallback:"ステータス"},"Rotation":[180,0],transformation:{left_rotation:[0.0,0.0,0.0,1.0],right_rotation:[0.0,0.0,0.0,1.0],translation:[0.0,0.0,0.0],scale:[2.0,2.0,2.0]},background:-2013265920}
summon minecraft:text_display 0.5 15.9 -31.5 {"Tags":["tutorial"],"view_range":0.055,"text":{translate:"bf.tutorial.2.text",fallback:"ステータスは主に3種類\n§c体力値§r・§9経験値§r・§a資源値 §rです。\n（詳細は左側）\nまた、その他のステータスとして\n防御力・装備の層数 が存在します。\n（詳細は右側）"},"Rotation":[180,0],background:-2013265920}

# チュートリアル橋設置
summon minecraft:interaction 0.5 14.0 -56.5 {"height":1.01,Tags:["tutorial"]}
summon minecraft:interaction 0.5 14.0 -46.5 {"height":1.01,Tags:["tutorial"]}
summon minecraft:interaction 0.5 14.0 -35.5 {"height":1.01,Tags:["tutorial"]}
summon minecraft:interaction 0.5 14.0 -25.5 {"height":1.01,Tags:["tutorial"]}