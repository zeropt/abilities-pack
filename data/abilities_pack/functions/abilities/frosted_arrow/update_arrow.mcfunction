# update frosted_arrow
# As: Arrow

#remove active tag if in_ground
execute if predicate abilities_pack:arrow_in_ground run tag @s remove active

#particles
execute as @s[tag=active] at @s run particle snowflake ~ ~ ~ 0.25 0.25 0.25 0 3 normal
execute as @s[tag=!active] at @s run particle snowflake ~ ~ ~ 0.125 0.125 0.125 0 1 normal

#frost
execute as @s[tag=active] at @s run function abilities_pack:abilities/frosted_arrow/frost_path
