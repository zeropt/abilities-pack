# Become a Bat
# As: Player

#Bat ID:7
scoreboard players set @s ability_id 7

#title
title @s title {"text":"Bat","color":"black"}

#playsound
execute at @s run playsound entity.bat.ambient player @a ~ ~ ~ 1.0

#activators
tag @s add active
scoreboard players set @s act_target 1

#set cooldown
scoreboard players set @s activate_cd 0
