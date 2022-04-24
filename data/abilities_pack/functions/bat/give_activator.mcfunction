# Give player the bat activator
# As: Player

# if act_target == 0: slot stick
execute as @s[scores={act_target=0}] run give @s stick{display:{Name:'{"text":"Ability Slot"}'},CustomModelData:11800,activator:1b} 1

# if act_target >= 1: wfoas
execute as @s[scores={act_target=1..}] run give @s warped_fungus_on_a_stick{display:{Name:'{"text":"Locater","color":"dark_gray"}'},CustomModelData:11807,activator:1b} 1
