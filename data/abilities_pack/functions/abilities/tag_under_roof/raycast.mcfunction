# tag_if_ceiling raycast
# As: Player

# tag if ceiling
execute unless block ~ ~ ~ #abilities_pack:airs run tag @s add under_roof

#raycast
execute as @s[tag=!under_roof] positioned ~ ~1 ~ if predicate abilities_pack:in_build_limits run function abilities_pack:abilities/tag_under_roof/raycast
