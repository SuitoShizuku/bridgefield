#storagereset
data remove storage bf:iv name
data remove storage bf:iv lore
data remove storage bf:iv lore0
data remove storage bf:iv lore1
data remove storage bf:iv lore2
data remove storage bf:iv lore3
data remove storage bf:iv lore4
data remove storage bf:iv lore5
data remove storage bf:iv lore6
#name 名前
#lore 建築資材　等
#resource_cost 資源値コスト
#durability 橋の耐久値
#resouce_add プラス資源値
#damage ダメージ
#special_effect 特殊効果
#defence 防御力
#True_defence_damage 防御貫通ダメージ

#データが代入されていないことを検知する用に{"text":"a"}が入れられる、マクロのエラー対策
data modify storage bf:iv lore0 set value {"text":"a"}
data modify storage bf:iv lore1 set value {"text":"a"}
data modify storage bf:iv lore2 set value {"text":"a"}
data modify storage bf:iv lore3 set value {"text":"a"}
data modify storage bf:iv lore4 set value {"text":"a"}
data modify storage bf:iv lore5 set value {"text":"a"}
data modify storage bf:iv lore6 set value {"text":"a"}

#名前とid以外の要素が7個あるのでloreを7回取得マクロに[0]使えないのでlore0で
$execute positioned -20 -1 -7 run data modify storage bf:iv id set from block ~-$(offset) ~ ~ Items[{Slot:$(slot)b}].id
$execute positioned -20 -1 -7 run data modify storage bf:iv name set string block ~-$(offset) ~ ~ Items[{Slot:$(slot)b}].id 10
$execute positioned -20 -1 -7 run data modify storage bf:iv name set from block ~-$(offset) ~ ~ Items[{Slot:$(slot)b}].components."minecraft:item_name"
$execute positioned -20 -1 -7 run data modify storage bf:iv lore0 set from block ~-$(offset) ~ ~ Items[{Slot:$(slot)b}].components."minecraft:lore"[0]
$execute positioned -20 -1 -7 run data modify storage bf:iv lore1 set from block ~-$(offset) ~ ~ Items[{Slot:$(slot)b}].components."minecraft:lore"[1]
$execute positioned -20 -1 -7 run data modify storage bf:iv lore2 set from block ~-$(offset) ~ ~ Items[{Slot:$(slot)b}].components."minecraft:lore"[2]
$execute positioned -20 -1 -7 run data modify storage bf:iv lore3 set from block ~-$(offset) ~ ~ Items[{Slot:$(slot)b}].components."minecraft:lore"[3]
$execute positioned -20 -1 -7 run data modify storage bf:iv lore4 set from block ~-$(offset) ~ ~ Items[{Slot:$(slot)b}].components."minecraft:lore"[4]
$execute positioned -20 -1 -7 run data modify storage bf:iv lore5 set from block ~-$(offset) ~ ~ Items[{Slot:$(slot)b}].components."minecraft:lore"[5]
$execute positioned -20 -1 -7 run data modify storage bf:iv lore6 set from block ~-$(offset) ~ ~ Items[{Slot:$(slot)b}].components."minecraft:lore"[6]