tag @s remove placed
$tellraw @s [{translate:"bf.chat.durability.fail",fallback:"資源値が足りません %1$s/%2$s",with:[{"text":"$(cost)",color:red},{score:{name:"@s","objective":"status.build"},color:"green"}]}]
