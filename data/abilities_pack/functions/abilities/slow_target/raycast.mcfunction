# Slow Player Raycast
# As: Player

#Particles
# particle minecraft:crit ~ ~-0.25 ~ 0 0 0 0 1 normal

#Decrement ray_range
scoreboard players remove #abilities_pack apvar_0 1

#check for target
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[tag=!source,dx=0] run tag @s add slow_target

#set as target
execute as @e[tag=slow_target] run function abilities_pack:abilities/slow_target/effect

#call again
execute unless entity @e[tag=slow_target] if score #abilities_pack apvar_0 matches 1.. if block ~ ~ ~ air positioned ^ ^ ^0.5 run function abilities_pack:abilities/slow_target/raycast

#remove target tag
tag @e[tag=slow_target] remove slow_target
