# Become a Shulker
# As: Player

#Shulker ID:4
scoreboard players set @s ability_id 4

#title
title @s title {"text":"Shulker","color":"light_purple"}

#playsound
execute at @s run playsound entity.shulker.ambient player @a ~ ~ ~ 1.0

#activators
tag @s add active
scoreboard players set @s act_target 1

#set cooldown
scoreboard players set @s activate_cd 0
