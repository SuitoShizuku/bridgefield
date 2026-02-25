data modify storage bf:item.disclosure inv set from entity @s Inventory
data modify storage bf:item.disclosure inv append from entity @s equipment.offhand
# 名前を表示させたいからそれ用に
data modify storage bf:item.disclosure inv[0].title set from storage bf:item.disclosure inv[0].components."minecraft:item_name"
data modify storage bf:item.disclosure inv[1].title set from storage bf:item.disclosure inv[1].components."minecraft:item_name"
data modify storage bf:item.disclosure inv[2].title set from storage bf:item.disclosure inv[2].components."minecraft:item_name"
data modify storage bf:item.disclosure inv[3].title set from storage bf:item.disclosure inv[3].components."minecraft:item_name"
data modify storage bf:item.disclosure inv[4].title set from storage bf:item.disclosure inv[4].components."minecraft:item_name"
data modify storage bf:item.disclosure inv[5].title set from storage bf:item.disclosure inv[5].components."minecraft:item_name"
data modify storage bf:item.disclosure inv[6].title set from storage bf:item.disclosure inv[6].components."minecraft:item_name"
data modify storage bf:item.disclosure inv[7].title set from storage bf:item.disclosure inv[7].components."minecraft:item_name"
data modify storage bf:item.disclosure inv[8].title set from storage bf:item.disclosure inv[8].components."minecraft:item_name"
data modify storage bf:item.disclosure inv[9].title set from storage bf:item.disclosure inv[9].components."minecraft:item_name"
data modify storage bf:item.disclosure inv[10].title set from storage bf:item.disclosure inv[10].components."minecraft:item_name"
data modify storage bf:item.disclosure inv[11].title set from storage bf:item.disclosure inv[11].components."minecraft:item_name"
data modify storage bf:item.disclosure inv[12].title set from storage bf:item.disclosure inv[12].components."minecraft:item_name"
data modify storage bf:item.disclosure inv[13].title set from storage bf:item.disclosure inv[13].components."minecraft:item_name"
data modify storage bf:item.disclosure inv[14].title set from storage bf:item.disclosure inv[14].components."minecraft:item_name"
data modify storage bf:item.disclosure inv[15].title set from storage bf:item.disclosure inv[15].components."minecraft:item_name"
data modify storage bf:item.disclosure inv[16].title set from storage bf:item.disclosure inv[16].components."minecraft:item_name"
data modify storage bf:item.disclosure inv[17].title set from storage bf:item.disclosure inv[17].components."minecraft:item_name"
data modify storage bf:item.disclosure inv[18].title set from storage bf:item.disclosure inv[18].components."minecraft:item_name"
data modify storage bf:item.disclosure inv[19].title set from storage bf:item.disclosure inv[19].components."minecraft:item_name"
data modify storage bf:item.disclosure inv[20].title set from storage bf:item.disclosure inv[20].components."minecraft:item_name"
data modify storage bf:item.disclosure inv[21].title set from storage bf:item.disclosure inv[21].components."minecraft:item_name"
data modify storage bf:item.disclosure inv[22].title set from storage bf:item.disclosure inv[22].components."minecraft:item_name"
data modify storage bf:item.disclosure inv[23].title set from storage bf:item.disclosure inv[23].components."minecraft:item_name"
data modify storage bf:item.disclosure inv[24].title set from storage bf:item.disclosure inv[24].components."minecraft:item_name"
data modify storage bf:item.disclosure inv[25].title set from storage bf:item.disclosure inv[25].components."minecraft:item_name"
data modify storage bf:item.disclosure inv[26].title set from storage bf:item.disclosure inv[26].components."minecraft:item_name"
data modify storage bf:item.disclosure inv[27].title set from storage bf:item.disclosure inv[27].components."minecraft:item_name"
data modify storage bf:item.disclosure inv[28].title set from storage bf:item.disclosure inv[28].components."minecraft:item_name"
data modify storage bf:item.disclosure inv[29].title set from storage bf:item.disclosure inv[29].components."minecraft:item_name"
data modify storage bf:item.disclosure inv[30].title set from storage bf:item.disclosure inv[30].components."minecraft:item_name"
data modify storage bf:item.disclosure inv[31].title set from storage bf:item.disclosure inv[31].components."minecraft:item_name"
data modify storage bf:item.disclosure inv[32].title set from storage bf:item.disclosure inv[32].components."minecraft:item_name"
data modify storage bf:item.disclosure inv[33].title set from storage bf:item.disclosure inv[33].components."minecraft:item_name"
data modify storage bf:item.disclosure inv[34].title set from storage bf:item.disclosure inv[34].components."minecraft:item_name"
data modify storage bf:item.disclosure inv[35].title set from storage bf:item.disclosure inv[35].components."minecraft:item_name"

tellraw @p[tag=attacker] [{"text": "——————————","color": "gray"}]
tellraw @p[tag=attacker] [{"text": "開示請求（カーソルを合わせて詳細を見る）","color": "gray"}]
execute if data storage bf:item.disclosure inv[0] run function core:ingame/item/distant/weapon/disclosure/tellraw_item with storage bf:item.disclosure inv[0]
execute if data storage bf:item.disclosure inv[1] run function core:ingame/item/distant/weapon/disclosure/tellraw_item with storage bf:item.disclosure inv[1]
execute if data storage bf:item.disclosure inv[2] run function core:ingame/item/distant/weapon/disclosure/tellraw_item with storage bf:item.disclosure inv[2]
execute if data storage bf:item.disclosure inv[3] run function core:ingame/item/distant/weapon/disclosure/tellraw_item with storage bf:item.disclosure inv[3]
execute if data storage bf:item.disclosure inv[4] run function core:ingame/item/distant/weapon/disclosure/tellraw_item with storage bf:item.disclosure inv[4]
execute if data storage bf:item.disclosure inv[5] run function core:ingame/item/distant/weapon/disclosure/tellraw_item with storage bf:item.disclosure inv[5]
execute if data storage bf:item.disclosure inv[6] run function core:ingame/item/distant/weapon/disclosure/tellraw_item with storage bf:item.disclosure inv[6]
execute if data storage bf:item.disclosure inv[7] run function core:ingame/item/distant/weapon/disclosure/tellraw_item with storage bf:item.disclosure inv[7]
execute if data storage bf:item.disclosure inv[8] run function core:ingame/item/distant/weapon/disclosure/tellraw_item with storage bf:item.disclosure inv[8]
execute if data storage bf:item.disclosure inv[9] run function core:ingame/item/distant/weapon/disclosure/tellraw_item with storage bf:item.disclosure inv[9]
execute if data storage bf:item.disclosure inv[10] run function core:ingame/item/distant/weapon/disclosure/tellraw_item with storage bf:item.disclosure inv[10]
execute if data storage bf:item.disclosure inv[11] run function core:ingame/item/distant/weapon/disclosure/tellraw_item with storage bf:item.disclosure inv[11]
execute if data storage bf:item.disclosure inv[12] run function core:ingame/item/distant/weapon/disclosure/tellraw_item with storage bf:item.disclosure inv[12]
execute if data storage bf:item.disclosure inv[13] run function core:ingame/item/distant/weapon/disclosure/tellraw_item with storage bf:item.disclosure inv[13]
execute if data storage bf:item.disclosure inv[14] run function core:ingame/item/distant/weapon/disclosure/tellraw_item with storage bf:item.disclosure inv[14]
execute if data storage bf:item.disclosure inv[15] run function core:ingame/item/distant/weapon/disclosure/tellraw_item with storage bf:item.disclosure inv[15]
execute if data storage bf:item.disclosure inv[16] run function core:ingame/item/distant/weapon/disclosure/tellraw_item with storage bf:item.disclosure inv[16]
execute if data storage bf:item.disclosure inv[17] run function core:ingame/item/distant/weapon/disclosure/tellraw_item with storage bf:item.disclosure inv[17]
execute if data storage bf:item.disclosure inv[18] run function core:ingame/item/distant/weapon/disclosure/tellraw_item with storage bf:item.disclosure inv[18]
execute if data storage bf:item.disclosure inv[19] run function core:ingame/item/distant/weapon/disclosure/tellraw_item with storage bf:item.disclosure inv[19]
execute if data storage bf:item.disclosure inv[20] run function core:ingame/item/distant/weapon/disclosure/tellraw_item with storage bf:item.disclosure inv[20]
execute if data storage bf:item.disclosure inv[21] run function core:ingame/item/distant/weapon/disclosure/tellraw_item with storage bf:item.disclosure inv[21]
execute if data storage bf:item.disclosure inv[22] run function core:ingame/item/distant/weapon/disclosure/tellraw_item with storage bf:item.disclosure inv[22]
execute if data storage bf:item.disclosure inv[23] run function core:ingame/item/distant/weapon/disclosure/tellraw_item with storage bf:item.disclosure inv[23]
execute if data storage bf:item.disclosure inv[24] run function core:ingame/item/distant/weapon/disclosure/tellraw_item with storage bf:item.disclosure inv[24]
execute if data storage bf:item.disclosure inv[25] run function core:ingame/item/distant/weapon/disclosure/tellraw_item with storage bf:item.disclosure inv[25]
execute if data storage bf:item.disclosure inv[26] run function core:ingame/item/distant/weapon/disclosure/tellraw_item with storage bf:item.disclosure inv[26]
execute if data storage bf:item.disclosure inv[27] run function core:ingame/item/distant/weapon/disclosure/tellraw_item with storage bf:item.disclosure inv[27]
execute if data storage bf:item.disclosure inv[28] run function core:ingame/item/distant/weapon/disclosure/tellraw_item with storage bf:item.disclosure inv[28]
execute if data storage bf:item.disclosure inv[29] run function core:ingame/item/distant/weapon/disclosure/tellraw_item with storage bf:item.disclosure inv[29]
execute if data storage bf:item.disclosure inv[30] run function core:ingame/item/distant/weapon/disclosure/tellraw_item with storage bf:item.disclosure inv[30]
execute if data storage bf:item.disclosure inv[31] run function core:ingame/item/distant/weapon/disclosure/tellraw_item with storage bf:item.disclosure inv[31]
execute if data storage bf:item.disclosure inv[32] run function core:ingame/item/distant/weapon/disclosure/tellraw_item with storage bf:item.disclosure inv[32]
execute if data storage bf:item.disclosure inv[33] run function core:ingame/item/distant/weapon/disclosure/tellraw_item with storage bf:item.disclosure inv[33]
execute if data storage bf:item.disclosure inv[34] run function core:ingame/item/distant/weapon/disclosure/tellraw_item with storage bf:item.disclosure inv[34]
execute if data storage bf:item.disclosure inv[35] run function core:ingame/item/distant/weapon/disclosure/tellraw_item with storage bf:item.disclosure inv[35]
tellraw @p[tag=attacker] [{"text": "——————————","color": "gray"}]