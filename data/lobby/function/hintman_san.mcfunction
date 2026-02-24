advancement revoke @s only lobby:hintman_san
execute store result score $hintman_san bf run random value 1..2

execute if score $hintman_san bf matches 1 run tellraw @s [{translate:"bf.chat.hintman_san.1",fallback:"投擲武器は、自分以外のターンで使うと消えちゃうよ"}]
execute if score $hintman_san bf matches 2 run tellraw @s [{translate:"bf.chat.hintman_san.2",fallback:"僕の名前はオワタマン...え、ｳｿｼﾞｬﾅｲヨ"}]