# spider climb
# As: Player

# clear previous levitation
effect clear @s minecraft:levitation
function abilities_pack:abilities/safe_landing/stop

# ascending
function abilities_pack:abilities/tag_in_water
execute as @s[tag=!in_water] unless predicate abilities_pack:is_sneaking run function abilities_pack:abilities/spider_climb/ascend

# holding
execute if predicate abilities_pack:is_sneaking run effect give @s levitation 1 255 true

# tag player
tag @s[tag=!climbing] add climbing
