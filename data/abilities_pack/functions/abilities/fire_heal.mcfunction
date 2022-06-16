# Heal blaze in fire
# As: Player

#get fire value
execute store result score #abilities_pack apvar_0 run data get entity @s Fire

#heal player
execute if score #abilities_pack apvar_0 matches 1.. run function abilities_pack:abilities/regen
