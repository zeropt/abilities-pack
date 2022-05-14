# web_potion loop
# As: Server

execute as @e[type=area_effect_cloud,tag=web_tracker,scores={target_id=..2147483647}] run function abilities_pack:abilities/web_potion/update_tracker
