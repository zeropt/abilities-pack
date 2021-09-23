# Become a Blaze
# As: Player

#Blaze ID:1
execute if score @s ability_id matches 0 run scoreboard players set @s ability_id 1

#activators
tag @s add active
scoreboard players set @s act_target 3

#set cooldown
scoreboard players set @s activate_cd 0
