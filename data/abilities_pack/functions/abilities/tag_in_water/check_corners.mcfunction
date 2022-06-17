# Tag player when corners are in water
# As: Player

execute positioned ~-0.3 ~ ~-0.3 if predicate abilities_pack:is_in_water run tag @s add in_water
execute positioned ~-0.3 ~ ~0.3 if predicate abilities_pack:is_in_water run tag @s add in_water
execute positioned ~0.3 ~ ~-0.3 if predicate abilities_pack:is_in_water run tag @s add in_water
execute positioned ~0.3 ~ ~0.3 if predicate abilities_pack:is_in_water run tag @s add in_water
