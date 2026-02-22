# もしプレイヤーが投げたアイテムではなかった場合
execute unless data entity @s Thrower run return run tag @s add NotDropItem
# タグ付与
tag @s add dropItem
# 分岐処理へ
function core:ingame/item/drop/item_if with entity @s