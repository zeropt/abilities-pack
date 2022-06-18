# Tag Player when in water
# As: Player

#remove tags
tag @s remove in_water

#in_water
execute at @s run function abilities_pack:abilities/tag_in_water/check_corners
execute at @s positioned ~ ~0.6 ~ run function abilities_pack:abilities/tag_in_water/check_corners
execute at @s anchored eyes positioned ^ ^ ^ positioned ~ ~0.17 ~ run function abilities_pack:abilities/tag_in_water/check_corners
execute at @s anchored eyes positioned ^ ^ ^ positioned ~ ~-0.42 ~ run function abilities_pack:abilities/tag_in_water/check_corners
execute at @s if block ~ ~ ~ minecraft:water_cauldron run tag @s add in_water
