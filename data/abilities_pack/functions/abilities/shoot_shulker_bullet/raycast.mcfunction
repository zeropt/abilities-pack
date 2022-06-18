# Shulker Raycast
# As: Player

#Particles
#particle minecraft:crit ~ ~-0.25 ~ 0 0 0 0 1 normal

#Decrement ray_range
scoreboard players remove #abilities_pack apvar_0 1

#check for target
execute as @e[type=!minecraft:shulker_bullet,tag=!shulker_source,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[tag=!shulker_source,dx=0] run tag @s add shulker_target

#set as target
execute as @e[tag=shulker_target] run effect give @s minecraft:glowing 1 0 false
execute if entity @e[tag=shulker_target] run function abilities_pack:abilities/shoot_shulker_bullet/summon_shulker_bullet

#call again
execute unless entity @e[tag=shulker_target] if score #abilities_pack apvar_0 matches 1.. positioned ^ ^ ^0.5 run function abilities_pack:abilities/shoot_shulker_bullet/raycast

#remove target tag
tag @e[tag=shulker_target] remove shulker_target
