# tag entities targeting player
# As: Player

# tag mobs that are targeting the player
tag @s add target
execute at @s as @e[distance=..32,type=#abilities_pack:can_target] if predicate abilities_pack:targeting_target run tag @s add attacker
tag @s remove target
