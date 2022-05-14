# tp cloud to target
# As: area_effect_cloud with target_id

tag @s add this_cloud
execute at @s as @e[type=!minecraft:area_effect_cloud,distance=..20] if score @s target_id = @e[type=area_effect_cloud,tag=this_cloud,limit=1] target_id at @s run tp @e[tag=this_cloud] @s
tag @s remove this_cloud
