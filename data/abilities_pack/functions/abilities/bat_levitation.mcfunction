# Levitate using Player pitch
# As: Player

execute store result score #global temp_global run data get entity @s Rotation[1]
execute unless score @s temp_global matches ..-1 if score #global temp_global matches ..-1 at @s run playsound entity.bat.takeoff player @a ~ ~ ~ 0.3
scoreboard players operation @s temp_global = #global temp_global
effect clear @s minecraft:levitation
execute if score #global temp_global matches -90..-61 run effect give @s minecraft:levitation 1 17 true
execute if score #global temp_global matches -60..-31 run effect give @s minecraft:levitation 1 11 true
execute if score #global temp_global matches -30..-1 run effect give @s minecraft:levitation 1 5 true
execute if score #global temp_global matches 0..29 run effect give @s minecraft:levitation 1 249 true
execute if score #global temp_global matches 30..59 run effect give @s minecraft:levitation 1 243 true
execute if score #global temp_global matches 60..90 run effect give @s minecraft:levitation 1 237 true
