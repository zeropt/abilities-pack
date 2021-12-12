# Become an Iron Golem
# As: Player

#Iron Golem ID:8
execute if score @s ability_id matches 0 run scoreboard players set @s ability_id 8

#activator
tag @s add active
scoreboard players set @s act_target 1

#set cooldown
scoreboard players set @s activate_cd 0

#objectives
scoreboard objectives add poppy_counter minecraft.used:minecraft.poppy
scoreboard players set @s poppy_counter 0