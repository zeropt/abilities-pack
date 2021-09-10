# Damage Player when in water
# As: Player

#Damage in water blocks
execute at @s if block ~-0.3 ~ ~-0.3 minecraft:water run function abilities_pack:traits/damage
execute at @s if block ~-0.3 ~ ~0.3 minecraft:water run function abilities_pack:traits/damage
execute at @s if block ~0.3 ~ ~-0.3 minecraft:water run function abilities_pack:traits/damage
execute at @s if block ~0.3 ~ ~0.3 minecraft:water run function abilities_pack:traits/damage
execute at @s anchored eyes if block ^-0.3 ^ ^-0.3 minecraft:water run function abilities_pack:traits/damage
execute at @s anchored eyes if block ^-0.3 ^ ^0.3 minecraft:water run function abilities_pack:traits/damage
execute at @s anchored eyes if block ^0.3 ^ ^-0.3 minecraft:water run function abilities_pack:traits/damage
execute at @s anchored eyes if block ^0.3 ^ ^0.3 minecraft:water run function abilities_pack:traits/damage

#Damage in rain
execute store result score @s rain_test run data get entity @e[type=minecraft:armor_stand,tag=rain_test,limit=1,sort=nearest] Fire
kill @e[type=minecraft:armor_stand,tag=rain_test]
execute at @s unless predicate abilities_pack:dry_weather if score @s rain_test matches 0 run function abilities_pack:traits/damage
execute at @s unless predicate abilities_pack:dry_weather run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Fire:2,HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["rain_test"]}
