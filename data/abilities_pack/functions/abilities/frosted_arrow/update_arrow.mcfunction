# update frosted_arrow
# As: Arrow

#particles
execute at @s run particle snowflake ~ ~ ~ 0.25 0.25 0.25 0 3 normal

#remove tag if in_ground
execute if predicate abilities_pack:arrow_in_ground run tag @s remove frosted_arrow

#frost
execute at @s run function abilities_pack:abilities/frosted_arrow/frost_path
