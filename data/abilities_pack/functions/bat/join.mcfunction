# Become a Bat
# As: Player

#Bat ID:7
scoreboard players set @s ability_id 7

#title
title @s title {"text":"Bat","color":"dark_gray"}

#playsound
execute at @s run playsound entity.bat.ambient player @a ~ ~ ~ 1.0

#activators
scoreboard players set @s act_target 1

#inventory update
function abilities_pack:bat/inventory_update

#set cooldown
scoreboard players set @s activate_cd 0

#attributes
attribute @s minecraft:generic.attack_speed base set 5.0
attribute @s minecraft:generic.max_health base set 6.0
