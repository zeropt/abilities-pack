# set shulker activator custom model data
# As: Player

execute if predicate abilities_pack:is_sneaking run item replace entity @s hotbar.0 with shulker_shell{display:{Name:'{"text":"Closed Shell","color":"light_purple"}'},CustomModelData:0,activator:1b}
execute unless predicate abilities_pack:is_sneaking run clear @s shulker_shell{activator:1b}