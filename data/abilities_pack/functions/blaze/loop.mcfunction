# Blaze Loop
# As: Tagged Player

#Give Fire Resistance
effect give @s minecraft:fire_resistance 1 1 true

#Particles
execute if score @s activate_cd matches 0 if predicate abilities_pack:in_mainhand at @s run function abilities_pack:blaze/particles

#Damage in water
execute at @s if block ~-0.3 ~ ~-0.3 minecraft:water run effect give @s minecraft:wither 1 1 true
execute at @s if block ~-0.3 ~ ~0.3 minecraft:water run effect give @s minecraft:wither 1 1 true
execute at @s if block ~0.3 ~ ~-0.3 minecraft:water run effect give @s minecraft:wither 1 1 true
execute at @s if block ~0.3 ~ ~0.3 minecraft:water run effect give @s minecraft:wither 1 1 true
execute at @s anchored eyes if block ^-0.3 ^ ^-0.3 minecraft:water run effect give @s minecraft:wither 1 1 true
execute at @s anchored eyes if block ^-0.3 ^ ^0.3 minecraft:water run effect give @s minecraft:wither 1 1 true
execute at @s anchored eyes if block ^0.3 ^ ^-0.3 minecraft:water run effect give @s minecraft:wither 1 1 true
execute at @s anchored eyes if block ^0.3 ^ ^0.3 minecraft:water run effect give @s minecraft:wither 1 1 true

#Shoot Fireball and set cooldown
execute if score @s activate_cd matches 0 if score @s activate matches 1 at @s run function abilities_pack:blaze/shoot_fireball
execute if score @s activate_cd matches 0 if score @s activate matches 1 run scoreboard players set @s activate_cd 100
