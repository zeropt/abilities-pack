# Heal blaze in fire
# As: Player

#get fire value
execute store result score #global temp_global run data get entity @s Fire

#heal player
execute if score #global temp_global matches 1.. run function abilities_pack:abilities/regen
