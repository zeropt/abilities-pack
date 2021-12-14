# Launch Player Raycast
# As: Player

#Particles
#particle minecraft:crit ~ ~-0.25 ~ 0 0 0 0 1 normal

#Decrement ray_range
scoreboard players remove #global temp_global 1

#check for target
execute as @e[tag=!source,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add launch_target

#set as target
execute as @e[tag=launch_target] run function abilities_pack:abilities/launch

#call again
execute unless entity @e[tag=launch_target] if score #global temp_global matches 1.. if block ~ ~ ~ air positioned ^ ^ ^0.5 run function abilities_pack:abilities/launch_target/raycast

#remove target tag
tag @e[tag=launch_target] remove launch_target
