# もしプレイヤーが投げたアイテムではなかった場合
execute unless data entity @s Thrower run return run tag @s add NotDropItem
execute if entity @s[tag=dropItemChecked,nbt={PortalCooldown:3}] run kill @s
# タグ付与
tag @s add dropItem
tag @s add dropItemChecked
# 分岐処理へ
function core:ingame/item/drop/item_if with entity @s