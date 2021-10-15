# Become a Bat
# As: Player

#Bat ID:7
execute if score @s ability_id matches 0 run scoreboard players set @s ability_id 7

#activators
tag @s add active
scoreboard players set @s act_target 1

#set cooldown
scoreboard players set @s activate_cd 0
