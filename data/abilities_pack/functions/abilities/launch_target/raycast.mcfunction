# Launch Player Raycast
# As: Player

#Particles
#particle minecraft:crit ~ ~-0.25 ~ 0 0 0 0 1 normal

#Decrement ray_range
scoreboard players remove #abilities_pack apvar_0 1

#check for target
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[tag=!source,dx=0] run tag @s add launch_target

#set as target
execute as @e[tag=launch_target] run function abilities_pack:abilities/launch

#call again
execute unless entity @e[tag=launch_target] if score #abilities_pack apvar_0 matches 1.. if block ~ ~ ~ air positioned ^ ^ ^0.5 run function abilities_pack:abilities/launch_target/raycast

#remove target tag
tag @e[tag=launch_target] remove launch_target
