#storagereset
data remove storage bf:iv name
data remove storage bf:iv lore
data remove storage bf:iv resource_cost
data remove storage bf:iv durability
data remove storage bf:iv resource_add
data remove storage bf:iv damage
data remove storage bf:iv special_effect
data remove storage bf:iv defence
#name 名前
#lore 建築資材　等
#resource_cost 資源値コスト
#durability 橋の耐久値
#resouce_add プラス資源値
#damage ダメージ
#special_effect 特殊効果
#defence 防御力
#True_defence_damage 防御貫通ダメージ

#
$execute positioned -20 -1 -7 run data modify storage bf:iv id set from block ~-$(offset) ~ ~ Items[{Slot:$(slot)b}].id
$execute positioned -20 -1 -7 run data modify storage bf:iv id set from block ~-$(offset) ~ ~ Items[{Slot:$(slot)b}].components."minecraft:item_model"
$execute positioned -20 -1 -7 run data modify storage bf:iv name set from block ~-$(offset) ~ ~ Items[{Slot:$(slot)b}].components."minecraft:item_name"
$execute positioned -20 -1 -7 run data modify storage bf:iv lore set from block ~-$(offset) ~ ~ Items[{Slot:$(slot)b}].components."minecraft:lore"


#各アイテム追加　こっちの方が１コマンドで１つのアイテムの情報詰めれて順番も変えれるからこれにしたけどもっといいやり方があるかも、アイテムを更に大量追加となると2分探索に切り替えても良さそう,return混ぜて負荷軽減頑張るか、最後の方になると変わらないけど
#execute if score $item.id iv matches 1 run data merge storage bf:iv {id:"minecraft:oak_log",name:"[橋]オークの木",lore:"建築資材",resource_cost:3,durability:3}
#execute if score $item.id iv matches 2 run data merge storage bf:iv {id:"minecraft:pale_oak_log",name:"[橋]ペールオークの木",lore:"建築資材",resource_cost:3,durability:3}
#execute if score $item.id iv matches 3 run data merge storage bf:iv {id:"minecraft:cherry_log",name:"[橋]サクラの木",lore:"建築資材",resource_cost:8,durability:3}
#execute if score $item.id iv matches 4 run data merge storage bf:iv {id:"minecraft:nether_brick",name:"[使]建築士台 - 3級",lore:"消費アイテム",resource_add:5}
#execute if score $item.id iv matches 5 run data merge storage bf:iv {id:"minecraft:brick",name:"[使]建築士台 - 2級",lore:"消費アイテム",resource_add:10}
#execute if score $item.id iv matches 6 run data merge storage bf:iv {id:"minecraft:resin_brick",name:"[使]建築士台 - 1級",lore:"消費アイテム",resource_add:20}
#execute if score $item.id iv matches 7 run data merge storage bf:iv {id:"minecraft:stick",name:"[攻]タダノ棒",lore:"近接武器",damage:2,true_defence_damage:3}
#execute if score $item.id iv matches 8 run data merge storage bf:iv {id:"minecraft:iron_axe",name:"[攻]氷結ハンマー",lore:"近接武器",damage:7,true_defence_damage:3,special_effect:"相手の次回のターンがスキップされる"}
#execute if score $item.id iv matches 9 run data merge storage bf:iv {id:"minecraft:copper_axe",name:"[攻]スタンハンマー",lore:"近接武器",damage:7,true_defence_damage:3,special_effect:"相手の次回のターンがスキップされる\n凍傷を持っている場合、＋ダメージ10"}
#execute if score $item.id iv matches 10 run data merge storage bf:iv {id:"minecraft:stone_axe",name:"[攻]鈍化の斧 -石",lore:"近接武器",damage:2,true_defence_damage:2,special_effect:"次回の相手のターンの行動時間約-60%"}
#execute if score $item.id iv matches 11 run data merge storage bf:iv {id:"minecraft:wooden_axe",name:"[攻]鈍化の斧 -木",lore:"近接武器",damage:1,true_defence_damage:1,special_effect:"次回の相手のターンの行動時間約-50%"}
#execute if score $item.id iv matches 12 run data merge storage bf:iv {id:"minecraft:wooden_sword",name:"[攻]木刀",lore:"近接武器",cost:4,special_effect:"攻撃者が火傷の場合、相手に火傷を付与する"}
#execute if score $item.id iv matches 13 run data merge storage bf:iv {id:"minecraft:leather_helmet",name:"[護]革の帽子",lore:"装備アイテム",defence:1}
#execute if score $item.id iv matches 14 run data merge storage bf:iv {id:"minecraft:leather_chestplate",name:"[護]革のジャケット",lore:"装備アイテム",defence:3}
#execute if score $item.id iv matches 15 run data merge storage bf:iv {id:"minecraft:leather_leggings",name:"[護]革のズボン",lore:"装備アイテム",defence:2}
#execute if score $item.id iv matches 16 run data merge storage bf:iv {id:"minecraft:leather_boots",name:"[護]革靴",lore:"装備アイテム",defence:1}
#execute if score $item.id iv matches 50.. run function lobby:item_viewer/display/item_display/id_get_50..

#データが無ければ0が入れられる、マクロのエラー対策
execute unless data storage bf:iv resource_cost run data merge storage bf:iv {resource_cost:0}
execute unless data storage bf:iv resource_add run data merge storage bf:iv {resource_add:0}
execute unless data storage bf:iv durability run data merge storage bf:iv {durability:0}
execute unless data storage bf:iv damage run data merge storage bf:iv {damage:0}
execute unless data storage bf:iv special_effect run data merge storage bf:iv {special_effect:0}
execute unless data storage bf:iv defence run data merge storage bf:iv {defence:0}
execute unless data storage bf:iv true_defence_damage run data merge storage bf:iv {true_defence_damage:0}