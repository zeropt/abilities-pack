# Give player the shulker activator
# As: Player

# if act_target == 0 and not sneaking: slot stick
execute as @s[scores={act_target=0}] unless predicate abilities_pack:is_sneaking run give @s stick{display:{Name:'{"text":"Ability Slot"}'},CustomModelData:11800,activator:1b} 1

# if act_target >= 1 and not sneaking: wfoas
execute as @s[scores={act_target=1..}] unless predicate abilities_pack:is_sneaking run give @s warped_fungus_on_a_stick{display:{Name:'{"text":"Shulker Bullet","color":"light_purple"}'},CustomModelData:11804,activator:1b} 1

# if sneaking: shulker shell
execute as @s if predicate abilities_pack:is_sneaking run give @s shulker_shell{display:{Name:'{"text":"Closed Shell","color":"light_purple"}'},CustomModelData:0,activator:1b} 1
