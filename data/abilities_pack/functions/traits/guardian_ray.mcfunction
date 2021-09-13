# Shoot Guardian Ray
# As: Player

scoreboard players set @s ray_range 40
tag @s add guardian_source
execute at @s anchored eyes positioned ^ ^ ^0.4 run function abilities_pack:traits/guardian_ray/raycast
tag @s remove guardian_source
