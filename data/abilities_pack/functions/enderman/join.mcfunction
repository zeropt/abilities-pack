# Become an Enderman
# As: Player

#Enderman ID:2
scoreboard players set @s ability_id 2

#title
title @s title {"text":"Enderman","color":"dark_purple"}

#playsound
execute at @s run playsound entity.enderman.teleport player @a ~ ~ ~ 1.0

#activator
scoreboard players set @s act_target 1

#set cooldown
scoreboard players set @s activate_cd 0
