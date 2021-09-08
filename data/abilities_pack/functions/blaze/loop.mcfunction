# Blaze Loop
# As: Tagged Player

#Give Fire Resistance
effect give @s minecraft:fire_resistance 1 1 true

#Particles
execute if score @s activate_cd matches 0 if predicate abilities_pack:in_mainhand at @s run function abilities_pack:blaze/particles

#Damage in water
execute at @s if block ~-0.3 ~ ~-0.3 minecraft:water run function abilities_pack:damage
execute at @s if block ~-0.3 ~ ~0.3 minecraft:water run function abilities_pack:damage
execute at @s if block ~0.3 ~ ~-0.3 minecraft:water run function abilities_pack:damage
execute at @s if block ~0.3 ~ ~0.3 minecraft:water run function abilities_pack:damage
execute at @s anchored eyes if block ^-0.3 ^ ^-0.3 minecraft:water run function abilities_pack:damage
execute at @s anchored eyes if block ^-0.3 ^ ^0.3 minecraft:water run function abilities_pack:damage
execute at @s anchored eyes if block ^0.3 ^ ^-0.3 minecraft:water run function abilities_pack:damage
execute at @s anchored eyes if block ^0.3 ^ ^0.3 minecraft:water run function abilities_pack:damage

#Damage in rain
execute store result score @s rain_test run data get entity @e[type=minecraft:armor_stand,tag=rain_test,limit=1,sort=nearest] Fire
kill @e[type=armor_stand,tag=rain_test]
execute at @s unless predicate abilities_pack:dry_weather if score @s rain_test matches 0 run function abilities_pack:damage
execute at @s unless predicate abilities_pack:dry_weather run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Fire:2,HasVisualFire:0b,Small:1b,Marker:1b,Invisible:1b,Tags:["rain_test"]}

#Shoot Fireball and set cooldown
execute if score @s activate_cd matches 0 if score @s activate matches 1 at @s run function abilities_pack:blaze/shoot_fireball
execute if score @s activate_cd matches 0 if score @s activate matches 1 run scoreboard players set @s activate_cd 100
