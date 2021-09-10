# Blaze Loop
# As: Tagged Player

#Give Fire Resistance
effect give @s minecraft:fire_resistance 1 0 true

#Water Damage
function abilities_pack:traits/damage_in_water

#Particles
execute if score @s activate_cd matches 0 if predicate abilities_pack:in_mainhand at @s run function abilities_pack:blaze/particles

#Shoot Fireball and reset cooldown
execute if score @s activate_cd matches 0 if score @s activate matches 1 at @s run function abilities_pack:blaze/shoot_fireball
execute if score @s activate_cd matches 0 if score @s activate matches 1 run scoreboard players set @s activate_cd 100
