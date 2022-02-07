# enchant or disanchant thorns
# As: Player

execute unless predicate abilities_pack:is_sneaking run item modify entity @s hotbar.0 abilities_pack:disenchant_thorns
execute if predicate abilities_pack:is_sneaking run item modify entity @s hotbar.0 abilities_pack:enchant_thorns
