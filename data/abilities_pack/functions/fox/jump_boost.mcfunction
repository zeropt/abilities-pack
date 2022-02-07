# Fox Jump boost
# As: Player

execute unless predicate abilities_pack:has_elytra run effect give @s minecraft:jump_boost 1 3 true
execute if predicate abilities_pack:has_elytra run effect give @s minecraft:jump_boost 1 1 true
