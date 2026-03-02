#Shift押しながらなら5つ前のアイテムにする
execute if predicate lobby:iv_sneaking run function lobby:item_viewer/display/back_5
#スニークしてないならそのままボタン押し
execute unless predicate lobby:iv_sneaking run function lobby:item_viewer/display/back
#ダッシュボタンおしてるなら10つ前にする
execute if predicate lobby:iv_sprint run function lobby:item_viewer/display/back_10
#スニークとダッシュボタンおしてるなら50つ前にする
execute if predicate lobby:iv_sprint if predicate lobby:iv_sneaking run function lobby:item_viewer/display/back_50
#playsound minecraft:block.nether_wood_button.click_on block @a ~ ~ ~ 1 1 0.1
playsound minecraft:block.nether_wood_button.click_on block @a ~ ~ ~ 1 1 0.1
#実績解除
advancement revoke @s only lobby:iv_left