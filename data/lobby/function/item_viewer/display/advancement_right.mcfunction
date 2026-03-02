#Shift押しながらなら5つ次のアイテムにする
execute if predicate lobby:iv_sneaking run function lobby:item_viewer/display/next_5
#スニークしてないならそのままボタン押し
execute unless predicate lobby:iv_sneaking run function lobby:item_viewer/display/next
#ダッシュボタンおしてるなら10つ次にする
execute if predicate lobby:iv_sprint run function lobby:item_viewer/display/next_10
#スニークとダッシュボタンおしてるなら50つ次にする
execute if predicate lobby:iv_sprint if predicate lobby:iv_sneaking run function lobby:item_viewer/display/next_50
#playsound minecraft:block.nether_wood_button.click_on block @a ~ ~ ~ 1 1 0.1
playsound minecraft:block.nether_wood_button.click_on block @a ~ ~ ~ 1 1 0.1
#実績解除
advancement revoke @s only lobby:iv_right