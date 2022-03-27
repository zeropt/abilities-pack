# Teleport player to a random location
# As: Player
# At: Player

execute store success score #global temp_global run spreadplayers ~ ~ 0 16 false @s
execute unless score #global temp_global matches 1 store success score #global temp_global run spreadplayers ~ ~ 0 16 under 256 false @s
execute unless score #global temp_global matches 1 store success score #global temp_global run spreadplayers ~ ~ 0 16 under 128 false @s
execute unless score #global temp_global matches 1 store success score #global temp_global run spreadplayers ~ ~ 0 16 under 64 false @s
execute unless score #global temp_global matches 1 store success score #global temp_global run spreadplayers ~ ~ 0 16 under 32 false @s
execute unless score #global temp_global matches 1 store success score #global temp_global run spreadplayers ~ ~ 0 16 under 0 false @s
execute unless score #global temp_global matches 1 store success score #global temp_global run spreadplayers ~ ~ 0 16 under -32 false @s
