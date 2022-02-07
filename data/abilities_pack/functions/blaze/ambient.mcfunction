# Blaze ambient
# As: Player

#particles
execute at @s run particle minecraft:flame ~ ~0.2 ~ 0.25 0.125 0.25 0 1 normal

#sound
execute as @s[scores={playsound_cd=..0}] run function abilities_pack:blaze/sound