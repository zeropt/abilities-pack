# Shoot a shulker bullet at a target
# As: Player

#Raycast
scoreboard players set @s ray_range 40
tag @s add shulker_source
execute at @s anchored eyes rotated as @s run function abilities_pack:abilities/shoot_shulker_bullet/raycast
tag @s remove shulker_source
