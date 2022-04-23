# Manage Player activators
# As: Player

# clear activators of act_target == 0
execute as @s[scores={act_target=0}] run function abilities_pack:clear_activators

# slot stick for players with no target
execute as @s[scores={act_target=0}] unless entity @s[nbt={Inventory:[{Slot:0b}]}] unless predicate abilities_pack:in_slot run give @s stick{display:{Name:'{"text":"Ability Slot"}'},CustomModelData:11800,activator:1b} 1

# remove slot stick if active
execute as @s[scores={act_target=1..}] run clear @s stick{activator:1b}

# Get the current count
scoreboard players set @a act_count 0
execute as @s[predicate=abilities_pack:in_slot,scores={act_target=1..}] store result score @s act_count run data get entity @s Inventory[0].Count

# clear if not equal
execute as @s[scores={act_target=1..}] unless score @s act_count = @s act_target run function abilities_pack:clear_activators

# fill
execute as @s[scores={act_target=1..}] unless entity @s[nbt={Inventory:[{Slot:0b}]}] unless score @s act_count = @s act_target run function abilities_pack:fill_activators

# clear if it didn't make it in the slot
execute as @s unless predicate abilities_pack:in_slot run function abilities_pack:clear_activators
