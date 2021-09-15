# Place a ray cast of armor stands
# As: Arrow Entity

summon area_effect_cloud ~ ~ ~ {Tags:["proj_ray"]}
scoreboard players remove @s ray_range 1
execute if score @s ray_range matches 1.. if block ~ ~ ~ air positioned ^ ^ ^0.5 run function abilities_pack:abilities/proj_raycast/raycast
