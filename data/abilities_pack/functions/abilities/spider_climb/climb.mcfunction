# spider climb
# As: Player

# get pitch
#execute store result score @s temp_global run data get entity @s Rotation[1]

# clear previous levitation
effect clear @s minecraft:levitation
#effect clear @s minecraft:slow_falling
function abilities_pack:abilities/safe_landing/stop

# ascending
function abilities_pack:abilities/tag_in_water
#execute unless predicate abilities_pack:is_sneaking if score @s temp_global matches -90..20 run effect give @s levitation 1 3 true
execute as @s[tag=!in_water] unless predicate abilities_pack:is_sneaking run function abilities_pack:abilities/spider_climb/ascend

# holding
execute if predicate abilities_pack:is_sneaking run effect give @s levitation 1 255 true

# descending
#execute unless predicate abilities_pack:is_sneaking if score @s temp_global matches 21..90 run effect give @s slow_falling 1 1 true

# tag player
tag @s[tag=!climbing] add climbing
