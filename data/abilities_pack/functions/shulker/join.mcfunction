# Become a Shulker
# As: Player

#Shulker ID:4
scoreboard players set @s ability_id 4

#title
title @s title {"text":"Shulker","color":"light_purple"}

#playsound
execute at @s run playsound entity.shulker.ambient player @a ~ ~ ~ 1.0

#activators
scoreboard players set @s act_target 1

#attributes
attribute @s minecraft:generic.max_health base set 24.0
attribute @s minecraft:generic.movement_speed base set 0.085
