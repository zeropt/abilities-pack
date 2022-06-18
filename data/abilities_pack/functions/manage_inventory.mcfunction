# Manage Player inventory
# As: Player

############# MANAGE TRAITS #############

########## MANAGE ABILITY SLOT ##########

# if act_target == 0: manage_placeholders
execute as @s[scores={act_target=0}] run function abilities_pack:manage_placeholders

# if act_target >= 1: manage_activators
execute as @s[scores={act_target=1..}] run function abilities_pack:manage_activators

# remove update tag after item managements
tag @s remove trigger_refresh
tag @s remove trigger_update

# if player has an ability and nothing is in the slot: trigger_update
execute as @s unless score @s ability_id matches 0 unless entity @s[nbt={Inventory:[{Slot:0b}]}] run tag @s add trigger_update
