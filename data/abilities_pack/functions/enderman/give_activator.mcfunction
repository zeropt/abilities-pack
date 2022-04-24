# Give player the enderman activator
# As: Player

# if act_target == 0: slot stick
execute as @s[scores={act_target=0}] run give @s stick{display:{Name:'{"text":"Ability Slot"}'},CustomModelData:11800,activator:1b} 1

# if act_target >= 1: ender_pearl
execute as @s[scores={act_target=1..}] run give @s ender_pearl{display:{Name:'{"text":"Ender Pearl","color":"dark_purple"}'},CustomModelData:11802,activator:1b} 1
