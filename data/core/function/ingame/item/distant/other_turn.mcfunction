tellraw @p[tag=attacker] [{"translate":"bf.chat.not_your_turn",fallback:"あなたのターンではありません。"}]
tag @s remove victim
tag @p[tag=attacker] remove attacker
kill @n[tag=projectile]