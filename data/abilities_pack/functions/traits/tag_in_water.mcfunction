# Damage Player when in water
# As: Player

#remove tags
tag @s remove in_water
tag @s remove in_rain

#in_water
execute at @s positioned ~-0.3 ~ ~-0.3 if predicate abilities_pack:is_in_water run tag @s add in_water
execute at @s positioned ~-0.3 ~ ~0.3 if predicate abilities_pack:is_in_water run tag @s add in_water
execute at @s positioned ~0.3 ~ ~-0.3 if predicate abilities_pack:is_in_water run tag @s add in_water
execute at @s positioned ~0.3 ~ ~0.3 if predicate abilities_pack:is_in_water run tag @s add in_water
execute at @s positioned ~-0.3 ~0.6 ~-0.3 if predicate abilities_pack:is_in_water run tag @s add in_water
execute at @s positioned ~-0.3 ~0.6 ~0.3 if predicate abilities_pack:is_in_water run tag @s add in_water
execute at @s positioned ~0.3 ~0.6 ~-0.3 if predicate abilities_pack:is_in_water run tag @s add in_water
execute at @s positioned ~0.3 ~0.6 ~0.3 if predicate abilities_pack:is_in_water run tag @s add in_water
execute at @s anchored eyes run summon armor_stand ^ ^ ^ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["player_top"]}
execute at @e[tag=player_top,limit=1,sort=nearest] positioned ~-0.3 ~0.17 ~-0.3 if predicate abilities_pack:is_in_water run tag @s add in_water
execute at @e[tag=player_top,limit=1,sort=nearest] positioned ~-0.3 ~0.17 ~0.3 if predicate abilities_pack:is_in_water run tag @s add in_water
execute at @e[tag=player_top,limit=1,sort=nearest] positioned ~0.3 ~0.17 ~-0.3 if predicate abilities_pack:is_in_water run tag @s add in_water
execute at @e[tag=player_top,limit=1,sort=nearest] positioned ~0.3 ~0.17 ~0.3 if predicate abilities_pack:is_in_water run tag @s add in_water
execute at @e[tag=player_top,limit=1,sort=nearest] positioned ~-0.3 ~-0.42 ~-0.3 if predicate abilities_pack:is_in_water run tag @s add in_water
execute at @e[tag=player_top,limit=1,sort=nearest] positioned ~-0.3 ~-0.42 ~0.3 if predicate abilities_pack:is_in_water run tag @s add in_water
execute at @e[tag=player_top,limit=1,sort=nearest] positioned ~0.3 ~-0.42 ~-0.3 if predicate abilities_pack:is_in_water run tag @s add in_water
execute at @e[tag=player_top,limit=1,sort=nearest] positioned ~0.3 ~-0.42 ~0.3 if predicate abilities_pack:is_in_water run tag @s add in_water
kill @e[type=minecraft:armor_stand,tag=player_top]

#in_rain
execute store result score @s rain_test run data get entity @e[type=minecraft:armor_stand,tag=rain_test,limit=1,sort=nearest] Fire
kill @e[type=minecraft:armor_stand,tag=rain_test]
execute at @s unless predicate abilities_pack:dry_weather if score @s rain_test matches 0 run tag @s add in_rain
execute at @s unless predicate abilities_pack:dry_weather run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Fire:2,HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["rain_test"]}

