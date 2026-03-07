#size change
execute as @a if predicate lobby:rd/looking_at_interaction_rd_rank as @n[tag=rd,tag=rank,tag=!scale_change,type=item_display] at @s run function lobby:rank_display/display/look/change
execute as @a if predicate lobby:rd/looking_at_interaction_rd_ranking as @n[tag=rd,tag=ranking,tag=!scale_change,type=item_display] at @s run function lobby:rank_display/display/look/change
execute as @a if predicate lobby:rd/looking_at_interaction_rd_setting as @n[tag=rd,tag=setting,tag=!scale_change,type=item_display] at @s run function lobby:rank_display/display/look/change

#tag rm
execute as @a unless predicate lobby:rd/looking_at_interaction_rd_rank as @n[tag=rd,tag=rank,tag=scale_change,type=item_display] at @s run tag @s remove scale_change
execute as @a unless predicate lobby:rd/looking_at_interaction_rd_ranking as @n[tag=rd,tag=ranking,tag=scale_change,type=item_display] at @s run tag @s remove scale_change
execute as @a unless predicate lobby:rd/looking_at_interaction_rd_setting as @n[tag=rd,tag=setting,tag=scale_change,type=item_display] at @s run tag @s remove scale_change