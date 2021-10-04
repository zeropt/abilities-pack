# Set direction and ray cast
# As: Arrow Entity

#set raycast distance
scoreboard players set #global temp_global 10

#copy arrow data
execute store result score @s temp_x0 run data get entity @s Pos[0] 1000000
execute store result score @s temp_y0 run data get entity @s Pos[1] 1000000
execute store result score @s temp_z0 run data get entity @s Pos[2] 1000000
execute store result score @s temp_x1 run data get entity @s Motion[0] 100000
execute store result score @s temp_y1 run data get entity @s Motion[1] 100000
execute store result score @s temp_z1 run data get entity @s Motion[2] 100000

scoreboard players operation @s temp_x0 += @s temp_x1
scoreboard players operation @s temp_y0 += @s temp_y1
scoreboard players operation @s temp_z0 += @s temp_z1

#direction armor_stand
execute at @s run summon area_effect_cloud ~ ~ ~ {Tags:["direction"]}

execute store result entity @e[type=area_effect_cloud,tag=direction,limit=1,sort=nearest] Pos[0] double 0.000001 run scoreboard players get @s temp_x0
execute store result entity @e[type=area_effect_cloud,tag=direction,limit=1,sort=nearest] Pos[1] double 0.000001 run scoreboard players get @s temp_y0
execute store result entity @e[type=area_effect_cloud,tag=direction,limit=1,sort=nearest] Pos[2] double 0.000001 run scoreboard players get @s temp_z0

#run raycast
execute at @s facing entity @e[type=area_effect_cloud,tag=direction,limit=1,sort=nearest] feet positioned ^ ^ ^2 run function abilities_pack:abilities/proj_raycast/raycast

#kill the direction area_effect_cloud
kill @e[type=area_effect_cloud,tag=direction]
