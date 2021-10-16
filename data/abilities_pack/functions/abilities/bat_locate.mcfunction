# Give all entities within a certain radius glowing
# As: Player

tag @s add bat_source
execute at @s as @e[tag=!bat_source,type=!item,type=!item_frame,type=!glow_item_frame,distance=..16] run effect give @s glowing 2 0 false
tag @s remove bat_source

#playsound
execute at @s run playsound entity.bat.ambient player @a ~ ~ ~ 0.4
