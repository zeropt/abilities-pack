# Sheep Spell Raycast
# As: Player

#Decrement ray_range
scoreboard players remove #global temp_global 1

#check for blue sheep
execute as @e[type=sheep,nbt={Color:11b},tag=!evoker_source,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add target_sheep

#change the color
execute as @e[tag=target_sheep] run data modify entity @s Color set value 14

#call again
execute unless entity @e[tag=target_sheep] if score #global temp_global matches 1.. if block ~ ~ ~ #abilities_pack:nonsolid positioned ^ ^ ^0.5 run function abilities_pack:abilities/sheep_spell/raycast

#remove target tag
tag @e[tag=target_sheep] remove target_sheep
