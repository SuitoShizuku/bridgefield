execute if predicate lobby:iv_sneaking run function lobby:item_viewer/display/back_5
#スニークしてないならそのままボタン押し
execute unless predicate lobby:iv_sneaking run setblock -24 2 -5 crimson_button[face=floor,facing=north,powered=true]
#playsound minecraft:block.nether_wood_button.click_on block @a ~ ~ ~ 1 1 0.1
playsound minecraft:block.nether_wood_button.click_on block @a ~ ~ ~ 1 1 0.1
#実績解除
advancement revoke @s only lobby:iv_left