# Tag Player when in water
# As: Player

#remove tags
tag @s remove in_water

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
