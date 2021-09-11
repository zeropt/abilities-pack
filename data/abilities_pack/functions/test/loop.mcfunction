# Test Loop
# As: Tagged Player

effect give @s minecraft:water_breathing 1 0 false
execute unless predicate abilities_pack:is_sneaking unless predicate abilities_pack:is_swimming run function abilities_pack:traits/float_in_water

