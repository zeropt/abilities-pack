# update frosted ice
# As: Area Effect Cloud

# store duration in apvar_0 and subtract 1
execute store result score #abilities_pack apvar_0 run data get entity @s Duration
scoreboard players remove #abilities_pack apvar_0 1

# store age in apvar_1
execute store result score #abilities_pack apvar_1 run data get entity @s Age

# apvar_0 -= apvar_1
scoreboard players operation #abilities_pack apvar_0 -= #abilities_pack apvar_1

#melting particles
execute if score #abilities_pack apvar_0 matches ..60 at @s run particle minecraft:falling_water ~ ~0.5 ~ 0.25 0.25 0.25 0 1 normal

# back to water
execute if score #abilities_pack apvar_0 matches 0 at @s if block ~ ~ ~ ice run setblock ~ ~ ~ water replace
