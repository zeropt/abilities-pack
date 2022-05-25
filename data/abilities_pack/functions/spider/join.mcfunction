# Become a Spider
# As: Player

#Spider ID:10
scoreboard players set @s ability_id 10

#title
title @s title {"text":"Spider","color":"dark_red"}

#playsound
execute at @s run playsound entity.spider.ambient player @a ~ ~ ~ 1.0

#activators
scoreboard players set @s act_target 1

#objectives
scoreboard players reset @s effect_id
