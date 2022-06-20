# Spider slow loop
# As: Player

#Give Effects
effect clear @s poison
execute at @s unless predicate abilities_pack:is_dark run effect give @s weakness 1 0 true
execute at @s if predicate abilities_pack:is_dark run effect give @s hunger 1 2 true
function abilities_pack:abilities/spider_effect

#boa damage
function abilities_pack:abilities/boa_damage
