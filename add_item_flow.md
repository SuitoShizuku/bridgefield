<details>
  <summary><b>ルートテーブルの各アイテムの雛形</b></summary>


近接武器の雛形

```json
{
    "type": "minecraft:item",
    "name": "stick",
    "weight": 4,
    "conditions": [],
    "functions": [
        {
            "function": "minecraft:set_components",
            "components": {
                "minecraft:item_model": "minecraft:<見た目>",
                "minecraft:item_name": {
                    "translate": "bf.item.melee.<weaponId>",
                    "fallback": "[攻]<名前>",
                    "color": "gray"
                },
                "minecraft:custom_data": {
                    "weaponId": "<weaponId>",
                    "weaponDamage": "<ダメージ>",
                    "weaponTrueDamage": "<防御貫通ダメージ>"
                },
                "minecraft:lore": [
                    {
                        "translate": "bf.item.melee",
                        "fallback": "近接武器",
                        "color": "white",
                        "italic": false
                    },
                    {
                        "translate": "bf.item.damage",
                        "fallback": "ダメージ: %s",
                        "with": [
                            {
                                "text": "<ダメージ>",
                                "color": "gold"
                            }
                        ],
                        "color": "green",
                        "italic": false
                    },
                    {
                        "translate": "bf.item.true_damage",
                        "fallback": "防御貫通ダメージ: %s",
                        "with": [
                            {
                                "text": "<防御貫通ダメージ>",
                                "color": "gold"
                            }
                        ],
                        "color": "green",
                        "italic": false
                    },
                    {
                        "text": "——————————",
                        "color": "gray",
                        "italic": false
                    },
                    {
                        "translate": "bf.item.melee.<weaponId>.comment",
                        "fallback": "<コメント>",
                        "color": "gray"
                    }
                ]
            }
        }
    ]
}
```

装備アイテムの雛形

```json
{
    "type": "minecraft:item",
    "name": "minecraft:phantom_membrane",
    "weight": 4,
    "conditions": [],
    "functions": [
        {
            "function": "minecraft:set_components",
            "components": {
                "minecraft:item_model": "minecraft:<見た目>",
                "minecraft:item_name": {
                    "translate": "bf.item.armor.<armorId>",
                    "fallback": "[護]<名前>",
                    "color": "gray"
                },
                "minecraft:custom_data": {
                    "armorId": "<armorId>",
                    "armorDefense": "<防御力>"
                },
                "minecraft:lore": [
                    {
                        "translate": "bf.item.armor",
                        "fallback": "装備アイテム",
                        "color": "white",
                        "italic": false
                    },
                    {
                        "translate": "bf.item.armordef",
                        "fallback": "防御力: %s",
                        "with": [
                            {
                                "text": "+<防御力>",
                                "color": "gold"
                            }
                        ],
                        "color": "green",
                        "italic": false
                    },
                    {
                        "text": "——————————",
                        "color": "gray",
                        "italic": false
                    },
                    {
                        "translate": "bf.item.armor.<armorId>.comment",
                        "fallback": "<コメント>",
                        "color": "gray"
                    }
                ]
            }
        }
    ]
}
```

建築資材の雛形

```json
{
    "type": "minecraft:item",
    "name": "minecraft:clay_ball",
    "weight": 2,
    "conditions": [],
    "functions": [
        {
            "function": "minecraft:set_components",
            "components": {
                "minecraft:item_model": "minecraft:<見た目>",
                "minecraft:item_name": {
                    "translate": "bf.item.bridge.<bridgeId>",
                    "fallback": "[橋]<名前>",
                    "color": "gray"
                },
                "minecraft:custom_data": {
                    "bridgeId": "<bridgeId>",
                    "bridgeCost": "<コスト>",
                    "bridgeDurability": "<耐久値>"
                },
                "minecraft:lore": [
                    {
                        "translate": "bf.item.bridge",
                        "fallback": "建築資材",
                        "color": "white",
                        "italic": false
                    },
                    {
                        "translate": "bf.item.bridgecost",
                        "fallback": "資源値コスト: %s",
                        "with": [
                            {
                                "text": "<コスト>",
                                "color": "gold"
                            }
                        ],
                        "color": "green",
                        "italic": false
                    },
                    {
                        "translate": "bf.item.bridgedurability",
                        "fallback": "橋の耐久値: %s",
                        "with": [
                            {
                                "text": "<コスト>",
                                "color": "gold"
                            }
                        ],
                        "color": "green",
                        "italic": false
                    },
                    {
                        "text": "——————————",
                        "color": "gray",
                        "italic": false
                    },
                    {
                        "translate": "bf.item.bridge.<bridgeId>.comment",
                        "fallback": "<コメント>",
                        "color": "gray"
                    }
                ]
            }
        }
    ]
}
```

消費アイテムの雛形

```json
{
    "type": "minecraft:item",
    "name": "minecraft:armadillo_scute",
    "weight": 4,
    "conditions": [],
    "functions": [
        {
            "function": "minecraft:set_components",
            "components": {
                "minecraft:item_model": "minecraft:<見た目>",
                "minecraft:item_name": {
                    "translate": "bf.item.consume.<consumeId>",
                    "fallback": "[使]<名前>",
                    "color": "gray"
                },
                "minecraft:custom_data": {
                    "consumeId": "<consumeId>"
                },
                "minecraft:lore": [
                    {
                        "translate": "bf.item.consume",
                        "fallback": "消費アイテム",
                        "color": "white",
                        "italic": false
                    },
                    {
                        "translate": "bf.item.effect",
                        "fallback": "—効果———————",
                        "color": "gray",
                        "italic": false
                    },
                    {
                        "translate": "bf.item.consume.<consumeId>.ef",
                        "fallback": "<効果の説明>",
                        "color": "white"
                    },
                    {
                        "text": "——————————",
                        "color": "gray",
                        "italic": false
                    },
                    {
                        "translate": "bf.item.consume.<consumeId>.comment",
                        "fallback": "<コメント>",
                        "color": "gray"
                    }
                ]
            }
        }
    ]
}
```
</details>


## 近接武器の追加方法

1. ### ルートテーブルを追加する

``data\core\loot_table\weapon.json``

に雛形からコピーしたものをエントリーに追加し、`<>`で囲われた部分を置き換え、アイテムを追加する。

2. ### 特殊効果を書く

``data\core\function\ingame\item\melee\weapon``

の中にルートテーブルを追加する時に書いた`<weaponId>`と同じ名前の関数ファイルを作成し、特殊効果を書く。



## 装備アイテムの追加方法

1. ### ルートテーブルを追加する

``data\core\loot_table\armor.json``

に雛形からコピーしたものをエントリーに追加し、`<>`で囲われた部分を置き換え、アイテムを追加する。

2. ### 装備着用時の処理を書く

``data\core\function\ingame\item\armor\use``

の中にルートテーブルを追加する時に書いた`<armorId>`と同じ名前の関数ファイルを作成し、装備着用時の処理を書く。



## 建築資材の追加方法

1. ### ルートテーブルを追加する

``data\core\loot_table\bridge.json``

に雛形からコピーしたものをエントリーに追加し、`<>`で囲われた部分を置き換え、アイテムを追加する。

2. ### 橋のデータを読み込む

橋のストラクチャーデータ(.nbt)を以下のフォルダにコピーする。
この時、ファイル名は`<bridgeID>`と同じにすること。

``data\core\structure\bridge``



## 消費アイテムの追加方法

1. ### ルートテーブルを追加する

``data\core\loot_table\consume.json``

に雛形からコピーしたものをエントリーに追加し、`<>`で囲われた部分を置き換え、アイテムを追加する。

2. ### 消費アイテムの効果を書く

``data\core\function\ingame\item\consume\use``

の中にルートテーブルを追加する時に書いた`<consumeId>`と同じ名前の関数ファイルを作成し、消費アイテムの効果を書く。