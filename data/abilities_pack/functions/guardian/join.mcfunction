# Become a Guardian
# As: Player

#Guardian ID:3
execute if score @s ability_id matches 0 run scoreboard players set @s ability_id 3

#Guardian objectives
scoreboard objectives add activate_dur dummy
scoreboard players set @s activate_dur 0
