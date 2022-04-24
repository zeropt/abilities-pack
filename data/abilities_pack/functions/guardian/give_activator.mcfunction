# Give player the guardian activator
# As: Player

# if sneaking: thorns wfoas
execute as @s if predicate abilities_pack:is_sneaking run give @s warped_fungus_on_a_stick{display:{Name:'{"text":"Guardian Laser","color":"dark_aqua"}'},CustomModelData:11803,activator:1b,Enchantments:[{id:"minecraft:thorns",lvl:3s}]} 1

# if not sneaking: wfoas
execute as @s unless predicate abilities_pack:is_sneaking run give @s warped_fungus_on_a_stick{display:{Name:'{"text":"Guardian Laser","color":"dark_aqua"}'},CustomModelData:11803,activator:1b} 1
