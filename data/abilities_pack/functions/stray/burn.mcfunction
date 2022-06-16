# burn or damage helmet
# As: Player

#burn
execute unless predicate abilities_pack:has_helmet run function abilities_pack:abilities/burn

#damage helmet
execute as @s[tag=slow_tick] if predicate abilities_pack:has_helmet run item modify entity @s armor.head abilities_pack:damage_helmet
