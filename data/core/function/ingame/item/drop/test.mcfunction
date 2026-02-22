$tag @n[type=item,nbt={Thrower:$(UUID)}] add dropItem
$data merge entity @n[tag=dropItem] {Owner:$(UUID),PickupDelay:0}