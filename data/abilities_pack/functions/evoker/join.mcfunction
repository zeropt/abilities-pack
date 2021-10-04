# Become an Evoker
# As: Player

#Evoker ID:5
execute if score @s ability_id matches 0 run scoreboard players set @s ability_id 6

#activators
tag @s add active
scoreboard players set @s act_target 1

#set cooldown
scoreboard players set @s activate_cd 0

#objectives
scoreboard objectives add tou_counter minecraft.used:minecraft.totem_of_undying
scoreboard players set @s tou_counter 0
