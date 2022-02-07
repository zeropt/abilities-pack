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
execute at @s anchored eyes run summon area_effect_cloud ^ ^ ^ {Tags:["player_eyes"]}
execute at @e[type=area_effect_cloud,tag=player_eyes,limit=1,sort=nearest] positioned ~-0.3 ~0.17 ~-0.3 if predicate abilities_pack:is_in_water run tag @s add in_water
execute at @e[type=area_effect_cloud,tag=player_eyes,limit=1,sort=nearest] positioned ~-0.3 ~0.17 ~0.3 if predicate abilities_pack:is_in_water run tag @s add in_water
execute at @e[type=area_effect_cloud,tag=player_eyes,limit=1,sort=nearest] positioned ~0.3 ~0.17 ~-0.3 if predicate abilities_pack:is_in_water run tag @s add in_water
execute at @e[type=area_effect_cloud,tag=player_eyes,limit=1,sort=nearest] positioned ~0.3 ~0.17 ~0.3 if predicate abilities_pack:is_in_water run tag @s add in_water
execute at @e[type=area_effect_cloud,tag=player_eyes,limit=1,sort=nearest] positioned ~-0.3 ~-0.42 ~-0.3 if predicate abilities_pack:is_in_water run tag @s add in_water
execute at @e[type=area_effect_cloud,tag=player_eyes,limit=1,sort=nearest] positioned ~-0.3 ~-0.42 ~0.3 if predicate abilities_pack:is_in_water run tag @s add in_water
execute at @e[type=area_effect_cloud,tag=player_eyes,limit=1,sort=nearest] positioned ~0.3 ~-0.42 ~-0.3 if predicate abilities_pack:is_in_water run tag @s add in_water
execute at @e[type=area_effect_cloud,tag=player_eyes,limit=1,sort=nearest] positioned ~0.3 ~-0.42 ~0.3 if predicate abilities_pack:is_in_water run tag @s add in_water
kill @e[type=area_effect_cloud,tag=player_eyes]
execute at @s if block ~ ~ ~ minecraft:water_cauldron run tag @s add in_water

#in_rain
execute at @s unless predicate abilities_pack:dry_weather as @e[type=armor_stand,tag=rain_test] if score @s player_id = @p player_id store result score #global temp_global run data get entity @s Fire
execute at @s unless predicate abilities_pack:dry_weather if score #global temp_global matches 0 run tag @s add in_rain
execute at @s as @e[type=armor_stand,tag=rain_test] if score @s player_id = @p player_id run kill @s
execute at @s unless predicate abilities_pack:dry_weather run summon armor_stand ~ ~ ~ {Silent:1b,NoGravity:1b,Invulnerable:1b,Fire:2,HasVisualFire:0b,Marker:1b,Invisible:1b,Small:1b,Tags:["rain_test_new"]}
execute at @s unless predicate abilities_pack:dry_weather run scoreboard players operation @e[type=armor_stand,tag=rain_test_new,limit=1] player_id = @s player_id
tag @e[type=armor_stand,tag=rain_test_new] add rain_test
tag @e[type=armor_stand,tag=rain_test_new] remove rain_test_new
