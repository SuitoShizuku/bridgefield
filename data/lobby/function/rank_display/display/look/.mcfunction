#size change
execute as @p[distance=..5] at @s if predicate lobby:rd/looking_at_interaction_rd_rank as @n[tag=rd,tag=rank,tag=!scale_change,type=item_display] run function lobby:rank_display/display/look/change
execute as @p[distance=..5] at @s if predicate lobby:rd/looking_at_interaction_rd_ranking as @n[tag=rd,tag=ranking,tag=!scale_change,type=item_display] run function lobby:rank_display/display/look/change
execute as @p[distance=..5] at @s if predicate lobby:rd/looking_at_interaction_rd_setting as @n[tag=rd,tag=setting,tag=!scale_change,type=item_display] run function lobby:rank_display/display/look/change

#tag rm
execute as @p[distance=..5] at @s unless predicate lobby:rd/looking_at_interaction_rd_rank as @n[tag=rd,tag=rank,tag=scale_change,type=item_display] run function lobby:rank_display/display/look/reset
execute as @p[distance=..5] at @s unless predicate lobby:rd/looking_at_interaction_rd_ranking as @n[tag=rd,tag=ranking,tag=scale_change,type=item_display] run function lobby:rank_display/display/look/reset
execute as @p[distance=..5] at @s unless predicate lobby:rd/looking_at_interaction_rd_setting as @n[tag=rd,tag=setting,tag=scale_change,type=item_display] run function lobby:rank_display/display/look/reset