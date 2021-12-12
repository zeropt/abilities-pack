# Become a Fox
# As: Player

#Fox ID:9
execute if score @s ability_id matches 0 run scoreboard players set @s ability_id 9

#activators
tag @s add active
scoreboard players set @s act_target 1
