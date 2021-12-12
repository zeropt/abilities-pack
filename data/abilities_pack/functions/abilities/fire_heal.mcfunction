# Heal blaze in fire
# As: Player

#get fire value
execute store result score #global temp_global run data get entity @s Fire

#heal player
execute if score #global temp_global matches 1.. if score @s crystal_regen_cd matches ..0 run effect give @s regeneration 11 0 false
execute if score #global temp_global matches 1.. if score @s crystal_regen_cd matches ..0 run scoreboard players set @s crystal_regen_cd 100
