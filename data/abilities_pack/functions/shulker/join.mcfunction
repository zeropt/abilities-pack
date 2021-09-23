# Become a Shulker
# As: Player

#Shulker ID:4
execute if score @s ability_id matches 0 run scoreboard players set @s ability_id 4

#activators
tag @s add active
scoreboard players set @s act_target 1

#set cooldown
scoreboard players set @s activate_cd 0
