scoreboard players set @s bf 0
execute store result score $lobby.slot bf run random value 1..100

# 29%
$execute if score $lobby.slot bf matches 1..29 run summon minecraft:item_display ~ ~ ~ {"item":{id:"coal"},Tags:["lobby","lobby.minigame","lobby.minigame.slot","lobby.minigame.slot.coal",lobby.minigame.slot.$(num)],"teleport_duration":0}
# 20%
$execute if score $lobby.slot bf matches 30..49 run summon minecraft:item_display ~ ~ ~ {"item":{id:"copper_ingot"},Tags:["lobby","lobby.minigame","lobby.minigame.slot","lobby.minigame.slot.copper",lobby.minigame.slot.$(num)],"teleport_duration":0}
# 16%
$execute if score $lobby.slot bf matches 50..65 run summon minecraft:item_display ~ ~ ~ {"item":{id:"iron_ingot"},Tags:["lobby","lobby.minigame","lobby.minigame.slot","lobby.minigame.slot.iron",lobby.minigame.slot.$(num)],"teleport_duration":0}
# 13%
$execute if score $lobby.slot bf matches 66..78 run summon minecraft:item_display ~ ~ ~ {"item":{id:"gold_ingot"},Tags:["lobby","lobby.minigame","lobby.minigame.slot","lobby.minigame.slot.gold",lobby.minigame.slot.$(num)],"teleport_duration":0}
# 10%
$execute if score $lobby.slot bf matches 79..88 run summon minecraft:item_display ~ ~ ~ {"item":{id:"diamond"},Tags:["lobby","lobby.minigame","lobby.minigame.slot","lobby.minigame.slot.diamond",lobby.minigame.slot.$(num)],"teleport_duration":0}
# 6%
$execute if score $lobby.slot bf matches 88..94 run summon minecraft:item_display ~ ~ ~ {"item":{id:"netherite_ingot"},Tags:["lobby","lobby.minigame","lobby.minigame.slot","lobby.minigame.slot.netherite",lobby.minigame.slot.$(num)],"teleport_duration":0}
# 4%
$execute if score $lobby.slot bf matches 95..98 run summon minecraft:item_display ~ ~ ~ {"item":{id:"emerald"},Tags:["lobby","lobby.minigame","lobby.minigame.slot","lobby.minigame.slot.emerald",lobby.minigame.slot.$(num)],"teleport_duration":0}
# 2%
$execute if score $lobby.slot bf matches 99..100 run summon minecraft:item_display ~ ~ ~ {"item":{id:"amethyst_shard"},Tags:["lobby","lobby.minigame","lobby.minigame.slot","lobby.minigame.slot.amethyst",lobby.minigame.slot.$(num)],"teleport_duration":0}