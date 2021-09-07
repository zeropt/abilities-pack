# Blaze Loop
# As: Tagged Player

#Give Fire Resistance
effect give @s minecraft:fire_resistance 1 1 true

#Set Fire
execute if score @s activate_cd matches 0 if predicate abilities_pack:in_mainhand at @s run function abilities_pack:blaze/particles

#Shoot Fireball and set cooldown
execute if score @s activate_cd matches 0 if score @s activate matches 1 at @s run function abilities_pack:blaze/shoot_fireball
execute if score @s activate_cd matches 0 if score @s activate matches 1 run scoreboard players set @s activate_cd 100
