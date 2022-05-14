# checks if a web needs to be deleted
# As: Area Effect Cloud

# store duration in temp_global and subtract 1
execute store result score #global temp_global run data get entity @s Duration
scoreboard players remove #global temp_global 1

# store age in temp_x0
execute store result score #global temp_x0 run data get entity @s Age

#delete block
execute if score #global temp_x0 >= #global temp_global at @s if block ~ ~ ~ cobweb run setblock ~ ~ ~ air
