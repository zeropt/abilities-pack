# Give player the evoker activator
# As: Player

# if act_target == 0: slot stick
execute as @s[scores={act_target=0}] run give @s stick{display:{Name:'{"text":"Ability Slot"}'},CustomModelData:11800,activator:1b} 1

# if act_target >= 1: wfoas
execute as @s[scores={act_target=1..}] run give @s warped_fungus_on_a_stick{display:{Name:'{"text":"Evoker Spells","color":"gray"}'},CustomModelData:11806,activator:1b} 1
