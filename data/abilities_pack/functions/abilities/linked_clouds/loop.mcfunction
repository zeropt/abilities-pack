# linked clouds follow their targets
# As: Server

execute as @e[type=minecraft:area_effect_cloud] if score @s target_id matches ..2147483647 run function abilities_pack:abilities/linked_clouds/loop
