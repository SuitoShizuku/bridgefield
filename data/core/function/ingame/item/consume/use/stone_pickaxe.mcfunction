tellraw @s [{translate:"bf.chat.breakable_bridge",fallback:"§c赤いパーティクル§rを%sで橋を破壊",with:[{keybind:"key.attack"}]}]
tag @s add consumeNoTurnEnd
playsound minecraft:entity.zombie.attack_iron_door block @a ~ ~ ~ 1 1.3 0.1