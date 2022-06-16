# Levitate using Player pitch
# As: Player

execute store result score #abilities_pack apvar_0 run data get entity @s Rotation[1]
execute as @s[tag=!flying] if score #abilities_pack apvar_0 matches ..-1 at @s run playsound entity.bat.takeoff player @a ~ ~ ~ 0.3
execute as @s[tag=flying] unless score @s apvar_0 matches ..-1 if score #abilities_pack apvar_0 matches ..-1 at @s run playsound entity.bat.takeoff player @a ~ ~ ~ 0.3
scoreboard players operation @s apvar_0 = #abilities_pack apvar_0
effect clear @s minecraft:levitation
execute if score #abilities_pack apvar_0 matches -90..-61 run effect give @s minecraft:levitation 1 17 true
execute if score #abilities_pack apvar_0 matches -60..-31 run effect give @s minecraft:levitation 1 11 true
execute if score #abilities_pack apvar_0 matches -30..-1 run effect give @s minecraft:levitation 1 5 true
execute if score #abilities_pack apvar_0 matches 0..29 run effect give @s minecraft:levitation 1 249 true
execute if score #abilities_pack apvar_0 matches 30..59 run effect give @s minecraft:levitation 1 243 true
execute if score #abilities_pack apvar_0 matches 60..90 run effect give @s minecraft:levitation 1 237 true

# tag player
tag @s add flying