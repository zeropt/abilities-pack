# Blaze ambient
# As: Player

#particles
execute at @s run particle minecraft:flame ~ ~0.2 ~ 0.25 0.125 0.25 0 1 normal

#sound
execute if score @s playsound_cd matches 0 run playsound entity.blaze.burn master @a ~ ~ ~ 0.8
execute if score @s playsound_cd matches 0 run scoreboard players set @s playsound_cd 20