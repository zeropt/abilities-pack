# Become a Guardian
# As: Player

#Guardian ID:3
scoreboard players set @s ability_id 3

#title
title @s title {"text":"Guardian","color":"dark_aqua"}

#playsound
execute at @s run playsound entity.guardian.ambient player @a ~ ~ ~ 1.0

#activator
tag @s add active
scoreboard players set @s act_target 1

#objectives
scoreboard players set @s temp_y1 0
scoreboard objectives add activate_dur dummy
scoreboard players set @s activate_dur 0
