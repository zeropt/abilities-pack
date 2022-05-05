# Give player the shulker activator
# As: Player

# if not sneaking: wfoas
execute as @s unless predicate abilities_pack:is_sneaking run give @s warped_fungus_on_a_stick{display:{Name:'{"text":"Shulker Bullet","color":"light_purple"}'},CustomModelData:11804,activator:1b} 1

# if sneaking: shulker shell
execute as @s if predicate abilities_pack:is_sneaking run give @s shulker_shell{display:{Name:'{"text":"Closed Shell","color":"light_purple"}'},CustomModelData:0,activator:1b} 1
