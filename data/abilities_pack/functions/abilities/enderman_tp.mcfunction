# Teleport player to a random location
# As: Player

execute at @s run particle minecraft:portal ~ ~1 ~ 0.25 0.5 0.25 0 100 normal
execute at @s run spreadplayers ~ ~ 0 16 false @s
execute at @s run particle minecraft:portal ~ ~1 ~ 0.25 0.5 0.25 0 100 normal
execute at @s run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 0.8 
