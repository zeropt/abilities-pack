# Give player the dragon activator
# As: Player

# if not sneaking: wfoas
execute as @s unless predicate abilities_pack:is_sneaking run give @s warped_fungus_on_a_stick{display:{Name:'{"text":"Dragon Boost","color":"light_purple"}'},CustomModelData:11805,activator:1b} 1

# if sneaking: wfoas
execute as @s if predicate abilities_pack:is_sneaking run give @s warped_fungus_on_a_stick{display:{Name:'{"text":"Dragon Breath","color":"light_purple"}'},CustomModelData:11905,activator:1b} 1
