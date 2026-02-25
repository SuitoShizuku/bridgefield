#スニークしてないならそのままボタン押し
execute unless predicate lobby:iv_sneaking run setblock -22 2 -5 warped_button[face=floor,facing=north,powered=true]
#実績解除
advancement revoke @s only lobby:iv_right