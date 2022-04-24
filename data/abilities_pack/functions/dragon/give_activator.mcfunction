# Give player the dragon activator
# As: Player

# if act_target == 0: slot stick
execute as @s[scores={act_target=0}] run give @s stick{display:{Name:'{"text":"Ability Slot"}'},CustomModelData:11800,activator:1b} 1

# if act_target >= 1 and not sneaking: wfoas
execute as @s[scores={act_target=1..}] unless predicate abilities_pack:is_sneaking run give @s warped_fungus_on_a_stick{display:{Name:'{"text":"Dragon Boost","color":"light_purple"}'},CustomModelData:11805,activator:1b} 1

# if act_target >= 1 and sneaking: wfoas
execute as @s[scores={act_target=1..}] if predicate abilities_pack:is_sneaking run give @s warped_fungus_on_a_stick{display:{Name:'{"text":"Dragon Breath","color":"light_purple"}'},CustomModelData:11905,activator:1b} 1
