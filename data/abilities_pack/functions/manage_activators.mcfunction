# Manage Player activators
# As: Player

# clear placeholders
clear @s #abilities_pack:placeholders{placeholder:1b}

# if trigger_refresh: clear activators
execute as @s[tag=trigger_refresh] run clear @s #abilities_pack:activators{activator:1b}
execute as @s[tag=trigger_refresh] run tag @s remove trigger_refresh

# Get the current count
scoreboard players set @s act_count 0
execute as @s store result score @s act_count run clear @s #abilities_pack:activators{activator:1b} 0

# clear if not equal
execute as @s unless score @s act_count = @s act_target run clear @s #abilities_pack:activators{activator:1b}

# fill if not equal
execute as @s unless score @s act_count = @s act_target run function abilities_pack:fill_activators

# clear if it didn't make it in the slot
execute as @s unless predicate abilities_pack:activator_in_slot run clear @s #abilities_pack:activators{activator:1b}
