# Become a Blaze
# As: Player

#Blaze ID:1
execute if score @s ability_id matches 0 run scoreboard players set @s ability_id 1

#Blaze 
scoreboard objectives add blaze_ammo dummy
scoreboard players set @s blaze_ammo 3
scoreboard objectives add activate_ammo dummy
