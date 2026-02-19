advancement revoke @s only core:walking_copper
execute align xyz positioned ~0.5 ~-0.5 ~0.5 if entity @n[tag=block.copper.cooldown,distance=..0.2] run return 0
execute if block ~ ~-1 ~ waxed_oxidized_copper run return run setblock ~ ~-1 ~ air destroy
execute if block ~ ~-1 ~ waxed_weathered_copper run setblock ~ ~-1 ~ waxed_oxidized_copper destroy
execute if block ~ ~-1 ~ waxed_exposed_copper run setblock ~ ~-1 ~ waxed_weathered_copper destroy
execute if block ~ ~-1 ~ waxed_copper_block run setblock ~ ~-1 ~ waxed_exposed_copper destroy
execute align xyz run summon marker ~0.5 ~-0.5 ~0.5 {Tags:["game","block.copper.cooldown"],PortalCooldown:20}