#実績剥奪
advancement revoke @s only core:item_drop

#ドロップしたアイテムにtag付与
execute store result score $temp bf run function core:ingame/item/drop/tag with entity @s
# タグ付与に失敗した場合ここで切り返す
execute if score $temp bf matches 0 run return 1

# ここに処理

# アイテムのtagを消す
tag @n[tag=dropItem] remove dropItem