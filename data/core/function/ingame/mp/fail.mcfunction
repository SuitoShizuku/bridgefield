tellraw @s [{translate:"bf.chat.mp.fail",fallback:"経験値が足りません %1$s/%2$s",with:[{score:{name:"@s",objective:"bf"},color:red},{score:{name:"@s",objective:"status.mp"},color:blue}]}]
return 1