# If ate berries, give more saturation
# As: Player

#Check for hurt by arrow advancement
scoreboard players set #global temp_global 0
execute store success score #global temp_global run advancement revoke @s only abilities_pack:ate_berries

#give effect
execute if score #global temp_global matches 1 run effect give @s saturation 1 3 true
