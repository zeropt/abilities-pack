# Set Fireball Motion
# As: Tagged Fireball

execute store result score @s proj_x1 run data get entity @s Pos[0] 1000000
execute store result score @s proj_y1 run data get entity @s Pos[1] 1000000
execute store result score @s proj_z1 run data get entity @s Pos[2] 1000000

execute at @s rotated as @p run tp @s ^ ^ ^0.4 

execute store result score @s proj_x2 run data get entity @s Pos[0] 1000000
execute store result score @s proj_y2 run data get entity @s Pos[1] 1000000
execute store result score @s proj_z2 run data get entity @s Pos[2] 1000000

scoreboard players operation @s proj_x2 -= @s proj_x1
scoreboard players operation @s proj_y2 -= @s proj_y1
scoreboard players operation @s proj_z2 -= @s proj_z1

execute store result entity @s Motion[0] double 0.000001 run scoreboard players get @s proj_x2
execute store result entity @s Motion[1] double 0.000001 run scoreboard players get @s proj_y2
execute store result entity @s Motion[2] double 0.000001 run scoreboard players get @s proj_z2
execute store result entity @s power[0] double 0.00000025 run scoreboard players get @s proj_x2
execute store result entity @s power[1] double 0.00000025 run scoreboard players get @s proj_y2
execute store result entity @s power[2] double 0.00000025 run scoreboard players get @s proj_z2