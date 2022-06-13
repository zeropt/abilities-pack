# heal_friends
# As: Player

tag @s add healer

# tag mobs that are targeting the player
tag @s add target
execute as @e[type=#abilities_pack:forget_meable,tag=attacker] run tag @s remove attacker
execute at @s as @e[type=#abilities_pack:forget_meable,distance=..32] if predicate abilities_pack:targeting_target run tag @s add attacker
tag @s remove target
