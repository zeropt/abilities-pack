# enchant or disanchant thorns
# As: Player

execute unless predicate abilities_pack:is_sneaking run item modify entity @s weapon.mainhand abilities_pack:disenchant_thorns
execute if predicate abilities_pack:is_sneaking run item modify entity @s weapon.mainhand abilities_pack:enchant_thorns
