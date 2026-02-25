#スニークしてないならそのままボタン押し
execute unless predicate lobby:iv_sneaking run setblock -24 2 -5 crimson_button[face=floor,facing=north,powered=true]
#実績解除
advancement revoke @s only lobby:iv_left