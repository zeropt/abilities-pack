# Manage the activator slot stick
# As: Player

#clear activators if not in slot
execute unless predicate abilities_pack:in_slot run function abilities_pack:clear_activator

#give a stick if not in slot
execute unless entity @s[nbt={Inventory:[{Slot:0b}]}] unless predicate abilities_pack:in_slot run give @s stick{display:{Name:'{"text":"Ability Slot"}'},CustomModelData:11800,activator:1b} 1

#clear stick if not in slot
execute unless entity @s[nbt={Inventory:[{Slot:0b}]}] unless predicate abilities_pack:in_slot run function abilities_pack:clear_activator
