# Guardian Raycast
# As: Player

#Particles
particle minecraft:bubble ~ ~-0.25 ~ 0 0 0 0 1 normal

#Decrement ray_range
scoreboard players remove #global temp_global 1

#check for target
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!minecraft:area_effect_cloud,tag=!guardian_source,dx=0] run tag @s add guardian_target

#summon damage cloud at target
execute as @s[tag=guardian_charged] at @e[tag=guardian_target] run function abilities_pack:abilities/linked_clouds/damage_cloud
execute if entity @e[tag=guardian_target] run tag @s add target_acquired

#call again
execute unless entity @e[tag=guardian_target] if score #global temp_global matches 1.. if block ~ ~ ~ #abilities_pack:laser_passable positioned ^ ^ ^0.5 run function abilities_pack:abilities/guardian_ray/raycast

#remove target tag
tag @e[tag=guardian_target] remove guardian_target
