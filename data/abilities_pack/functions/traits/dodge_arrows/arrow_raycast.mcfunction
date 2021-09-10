# Set direction and ray cast
# As: Arrow Entity

#set raycast distance
scoreboard players set @s ray_range 10

#copy arrow data
execute store result score @s proj_x0 run data get entity @s Pos[0] 1000000
execute store result score @s proj_y0 run data get entity @s Pos[1] 1000000
execute store result score @s proj_z0 run data get entity @s Pos[2] 1000000
execute store result score @s proj_x1 run data get entity @s Motion[0] 100000
execute store result score @s proj_y1 run data get entity @s Motion[1] 100000
execute store result score @s proj_z1 run data get entity @s Motion[2] 100000

scoreboard players operation @s proj_x0 += @s proj_x1
scoreboard players operation @s proj_y0 += @s proj_y1
scoreboard players operation @s proj_z0 += @s proj_z1

#direction armor_stand
execute at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:0b,Tags:["direction"]}

execute store result entity @e[type=minecraft:armor_stand,tag=direction,limit=1,sort=nearest] Pos[0] double 0.000001 run scoreboard players get @s proj_x0
execute store result entity @e[type=minecraft:armor_stand,tag=direction,limit=1,sort=nearest] Pos[1] double 0.000001 run scoreboard players get @s proj_y0
execute store result entity @e[type=minecraft:armor_stand,tag=direction,limit=1,sort=nearest] Pos[2] double 0.000001 run scoreboard players get @s proj_z0

#run raycast
execute at @s facing entity @e[type=minecraft:armor_stand,tag=direction,limit=1,sort=nearest] feet positioned ^ ^ ^2 run function abilities_pack:traits/dodge_arrows/armorstand_ray

#kill the direction armor_stand
kill @e[type=minecraft:armor_stand,tag=direction,limit=1,sort=nearest]
