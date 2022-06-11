# Become an Evoker
# As: Player

#Evoker ID:5
scoreboard players set @s ability_id 6

#title
title @s title {"text":"Evoker","color":"gray"}

#playsound
execute at @s run playsound entity.evoker.prepare_wololo player @a ~ ~ ~ 1.0

#activators
scoreboard players set @s act_target 1

#inventory update
function abilities_pack:evoker/inventory_update

#set cooldown
scoreboard players set @s activate_cd 0

#objectives
scoreboard objectives add tou_counter minecraft.used:minecraft.totem_of_undying
scoreboard players set @s tou_counter 0

#attributes
attribute @s minecraft:generic.max_health base set 24.0
attribute @s minecraft:generic.movement_speed base set 0.14
