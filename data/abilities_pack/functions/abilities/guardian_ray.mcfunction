# Shoot Guardian Ray
# As: Player

scoreboard players set @s ray_range 30
tag @s add guardian_source
tag @s remove target_acquired
execute at @s anchored eyes positioned ^ ^ ^0.4 run function abilities_pack:abilities/guardian_ray/raycast
tag @s remove guardian_source
