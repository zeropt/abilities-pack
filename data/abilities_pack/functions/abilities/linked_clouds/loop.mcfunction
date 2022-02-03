# linked clouds follow their targets
# As: Server

execute as @e[type=minecraft:area_effect_cloud,scores={target_id=..2147483647}] run function abilities_pack:abilities/linked_clouds/follow_target
