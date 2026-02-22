$tag @n[type=item,nbt={Thrower:$(UUID)}] add dropItem
$data merge entity @n[tag=dropItem] {Owner:$(UUID),PickupDelay:0}
execute if entity @n[tag=dropItem] run return 1
return 0