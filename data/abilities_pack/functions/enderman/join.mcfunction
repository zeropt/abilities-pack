# Become an Enderman
# As: Player

#Enderman ID:2
execute if score @s ability_id matches 0 run scoreboard players set @s ability_id 2

#activator
tag @s add active
scoreboard players set @s act_target 1
