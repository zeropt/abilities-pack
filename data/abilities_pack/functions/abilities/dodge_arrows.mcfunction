# Detect and Dodge arrows
# As: Player

#raycast at nearby arrows
execute at @s as @e[type=#minecraft:arrows,nbt={HasBeenShot:1b,inGround:0b},distance=..10] run function abilities_pack:abilities/proj_raycast/run

#teleport if player intersects with raycast
execute at @s at @e[type=area_effect_cloud,tag=proj_ray,limit=1,sort=nearest] positioned ~-0.3 ~-0.3 ~-0.3 if entity @s[dx=0] positioned ~-0.4 ~-0.4 ~-0.4 if entity @s[dx=0] run function abilities_pack:abilities/enderman_tp
