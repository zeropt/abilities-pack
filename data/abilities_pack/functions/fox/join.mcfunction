# Become a Fox
# As: Player

#Fox ID:9
scoreboard players set @s ability_id 9

#title
title @s title {"text":"Fox","color":"gold"}

#playsound
execute at @s run playsound entity.fox.ambient player @a ~ ~ ~ 1.0

#activators
scoreboard players set @s act_target 1

#attributes
attribute @s minecraft:generic.max_health base set 10.0
