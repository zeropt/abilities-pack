# Become a Blaze
# As: Player

#Blaze ID:1
scoreboard players set @s ability_id 1

#title
title @s title {"text":"Blaze","color":"yellow"}

#playsound
execute at @s run playsound entity.blaze.ambient player @a ~ ~ ~ 1.0

#activators
scoreboard players set @s act_target 3
