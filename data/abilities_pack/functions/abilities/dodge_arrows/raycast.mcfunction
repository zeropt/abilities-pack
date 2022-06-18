# Place a ray cast of armor stands
# As: Arrow Entity

summon area_effect_cloud ~ ~ ~ {Tags:["proj_ray"]}
scoreboard players remove #abilities_pack apvar_0 1
execute if score #abilities_pack apvar_0 matches 1.. if block ~ ~ ~ air positioned ^ ^ ^0.5 run function abilities_pack:abilities/dodge_arrows/raycast
