# update frosted basalt
# As: Area Effect Cloud

# store duration in temp_global and subtract 1
execute store result score #global temp_global run data get entity @s Duration
scoreboard players remove #global temp_global 1

# store age in temp_x0
execute store result score #global temp_x0 run data get entity @s Age

# temp_global -= temp_x0
scoreboard players operation #global temp_global -= #global temp_x0

# Magma
execute if score #global temp_global matches 60 at @s if block ~ ~ ~ basalt run function abilities_pack:abilities/frosted_basalt/to_magma

# Lava
execute if score #global temp_global matches 0 at @s if block ~ ~ ~ magma_block run function abilities_pack:abilities/frosted_basalt/to_lava
