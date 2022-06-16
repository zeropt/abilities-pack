# update frosted ice
# As: Area Effect Cloud

# store duration in temp_global and subtract 1
execute store result score #global temp_global run data get entity @s Duration
scoreboard players remove #global temp_global 1

# store age in temp_x0
execute store result score #global temp_x0 run data get entity @s Age

# temp_global -= temp_x0
scoreboard players operation #global temp_global -= #global temp_x0

#melting particles
execute if score #global temp_global matches ..60 at @s run particle minecraft:falling_water ~ ~0.5 ~ 0.25 0.25 0.25 0 1 normal

# back to water
execute if score #global temp_global matches 0 at @s if block ~ ~ ~ ice run setblock ~ ~ ~ water replace
