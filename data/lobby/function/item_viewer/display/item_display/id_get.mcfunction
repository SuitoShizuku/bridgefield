#storagereset
data remove storage bf:iv name
data remove storage bf:iv lore
data remove storage bf:iv resource_cost
data remove storage bf:iv durability
data remove storage bf:iv resource_add
data remove storage bf:iv damage
data remove storage bf:iv special_effect
data remove storage bf:iv defence
#各アイテム追加　こっちの方が１コマンドで１つのアイテムの情報詰めれて順番も変えれるからこれにしたけどもっといいやり方があるかも、アイテムを更に大量追加となると2分探索に切り替えても良さそう
execute if score $item.id iv matches 1 run data merge storage bf:iv {id:"minecraft:oak_log",name:"[橋]オークの木",lore:"建築資材",resource_cost:3,durability:3}
execute if score $item.id iv matches 2 run data merge storage bf:iv {id:"minecraft:pale_oak_log",name:"[橋]ペールオークの木",lore:"建築資材",resource_cost:3,durability:3}
execute if score $item.id iv matches 3 run data merge storage bf:iv {id:"minecraft:cherry_log",name:"[橋]サクラの木",lore:"建築資材",resource_cost:8,durability:3}
execute if score $item.id iv matches 4 run data merge storage bf:iv {id:"minecraft:nether_brick",name:"[使]建築士台 - 3級",lore:"消費アイテム",resource_add:5}
execute if score $item.id iv matches 5 run data merge storage bf:iv {id:"minecraft:brick",name:"[使]建築士台 - 2級",lore:"消費アイテム",resource_add:10}
execute if score $item.id iv matches 6 run data merge storage bf:iv {id:"minecraft:resin_brick",name:"[使]建築士台 - 1級",lore:"消費アイテム",resource_add:20}
execute if score $item.id iv matches 7 run data merge storage bf:iv {id:"minecraft:stick",name:"[攻]タダノ棒",lore:"近接武器",damage:2}
execute if score $item.id iv matches 8 run data merge storage bf:iv {id:"minecraft:wooden_sword",name:"[攻]木刀",lore:"近接武器",cost:4,special_effect:"攻撃者が火傷の場合、相手に火傷を付与する"}
execute if score $item.id iv matches 9 run data merge storage bf:iv {id:"minecraft:leather_helmet",name:"[護]皮の帽子",lore:"装備アイテム",defence:1}
execute if score $item.id iv matches 10 run data merge storage bf:iv {id:"minecraft:leather_chestplate",name:"[護]皮のジャケット",lore:"装備アイテム",defence:3}
execute if score $item.id iv matches 11 run data merge storage bf:iv {id:"minecraft:leather_leggings",name:"[護]皮のズボン",lore:"装備アイテム",defence:2}
execute if score $item.id iv matches 12 run data merge storage bf:iv {id:"minecraft:leather_boots",name:"[護]革靴",lore:"装備アイテム",defence:1}
execute if score $item.id iv matches 50.. run function lobby:item_viewer/display/item_display/id_get_50..
execute unless data storage bf:iv resource_cost run data merge storage bf:iv {resource_cost:0}
execute unless data storage bf:iv resource_add run data merge storage bf:iv {resource_add:0}
execute unless data storage bf:iv durability run data merge storage bf:iv {durability:0}
execute unless data storage bf:iv damage run data merge storage bf:iv {damage:0}
execute unless data storage bf:iv special_effect run data merge storage bf:iv {special_effect:0}
execute unless data storage bf:iv defence run data merge storage bf:iv {defence:0}