# Manage Player activators
# As: Player

# clear activators
clear @s #abilities_pack:activators{activator:1b}

# if trigger_refresh: clear placeholders
execute as @s[tag=trigger_refresh] run clear @s #abilities_pack:placeholders{placeholder:1b}
execute as @s[tag=trigger_refresh] run tag @s remove trigger_refresh

# clear placeholders if not in slot
execute as @s unless predicate abilities_pack:placeholder_in_slot run clear @s #abilities_pack:placeholders{placeholder:1b}

# give placeholder
execute as @s unless predicate abilities_pack:placeholder_in_slot run function abilities_pack:give_placeholder

# clear if it didn't make it in the slot
execute as @s unless predicate abilities_pack:placeholder_in_slot run clear @s #abilities_pack:placeholders{placeholder:1b}
