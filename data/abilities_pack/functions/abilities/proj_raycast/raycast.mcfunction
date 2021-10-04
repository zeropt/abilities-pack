# Place a ray cast of armor stands
# As: Arrow Entity

summon area_effect_cloud ~ ~ ~ {Tags:["proj_ray"]}
scoreboard players remove #global temp_global 1
execute if score #global temp_global matches 1.. if block ~ ~ ~ air positioned ^ ^ ^0.5 run function abilities_pack:abilities/proj_raycast/raycast
