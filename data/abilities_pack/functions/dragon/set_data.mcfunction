# set dragon activator custom model data
# As: Player

execute unless predicate abilities_pack:is_sneaking run item modify entity @s weapon.mainhand abilities_pack:dragon_unsneak
execute if predicate abilities_pack:is_sneaking run item modify entity @s weapon.mainhand abilities_pack:dragon_sneak
