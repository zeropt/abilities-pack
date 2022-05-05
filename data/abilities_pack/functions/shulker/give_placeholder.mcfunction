# Give player the shulker placeholder
# As: Player

# if not sneaking: placeholder stick
execute as @s unless predicate abilities_pack:is_sneaking run give @s stick{display:{Name:'{"text":"Ability Slot"}'},CustomModelData:11800,placeholder:1b} 1

# if sneaking: shulker shell
execute as @s if predicate abilities_pack:is_sneaking run give @s shulker_shell{display:{Name:'{"text":"Closed Shell","color":"light_purple"}'},CustomModelData:0,placeholder:1b} 1
