advancement revoke @s only lobby:hintman_san
playsound entity.villager.ambient ambient @a ~ ~ ~ 1 2 0
execute store result score $hintman_san bf run random value 1..5

execute if score $hintman_san bf matches 1 run tellraw @s [{translate:"bf.chat.hintman_san.1",fallback:"投擲武器は、自分以外のターンで使うと消えちゃうよ"}]
execute if score $hintman_san bf matches 2 run tellraw @s [{translate:"bf.chat.hintman_san.2",fallback:"僕の名前はオワタマン...え、ｳｿｼﾞｬﾅｲヨ"}]
execute if score $hintman_san bf matches 3 run tellraw @s [{translate:"bf.chat.hintman_san.3",fallback:"アツイ棒って使った人は火傷にならないのかな?"}]
execute if score $hintman_san bf matches 4 run tellraw @s [{translate:"bf.chat.hintman_san.4",fallback:"?"}]
execute if score $hintman_san bf matches 5 run tellraw @s [{translate:"bf.chat.hintman_san.5",fallback:"僕もゲームに連れてってよ～"}]