# tag player in sunlight
# As: Player

#remove tag
tag @s remove in_sunlight

#tag in sunlight
execute at @s if predicate abilities_pack:clear_day positioned ~ ~0.5 ~ if predicate abilities_pack:under_sky run tag @s add in_sunlight
