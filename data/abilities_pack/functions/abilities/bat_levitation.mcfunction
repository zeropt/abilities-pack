# Levitate using Player pitch
# As: Player

# if not riding and in flyable block: set_levitation
execute as @s unless predicate abilities_pack:is_riding_entity at @s if block ~ ~-0.01 ~ #abilities_pack:bat_flyable run function abilities_pack:abilities/bat_levitation/set_levitation

# if riding or not in flyable block: stop_levitation
execute as @s if predicate abilities_pack:is_riding_entity run function abilities_pack:abilities/bat_levitation/stop
execute as @s at @s unless block ~ ~-0.01 ~ #abilities_pack:bat_flyable run function abilities_pack:abilities/bat_levitation/stop
