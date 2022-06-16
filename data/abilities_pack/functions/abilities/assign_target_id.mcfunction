# Assign a target id
# As: Entity

#increment global target_id
scoreboard players add #abilities_pack target_id 1

#set target_id
scoreboard players operation @s target_id = #abilities_pack target_id
