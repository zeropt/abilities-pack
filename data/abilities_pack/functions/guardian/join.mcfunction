# Become a Guardian
# As: Player

#Guardian ID:3
execute if score @s ability_id matches 0 run scoreboard players set @s ability_id 3

#Guardian objectives
scoreboard objectives add laser_dur dummy
scoreboard players set @s laser_dur 0
