# Guardian Raycast
# As: Player

#Particles
#particle minecraft:dust 0.533 0.000 0.667 1 ~ ~ ~ 0 0 0 0 1 normal
particle minecraft:bubble ~ ~-0.3 ~ 0 0 0 0 1 normal

#Decrement ray_range
scoreboard players remove @s ray_range 1

#check for target
execute as @e[type=!minecraft:area_effect_cloud,tag=!guardian_source,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[tag=!guardian_source,dx=0] run tag @s add guardian_target

#summon damage cloud at target
execute as @s[tag=guardian_charged] at @e[tag=guardian_target] run function abilities_pack:traits/guardian_ray/damage_cloud

#call again
execute unless entity @e[tag=guardian_target] if score @s ray_range matches 1.. positioned ^ ^ ^0.5 run function abilities_pack:traits/guardian_ray/raycast

#remove target tag
tag @e[tag=guardian_target] remove guardian_target
