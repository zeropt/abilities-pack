# checks if a web needs to be deleted
# As: Area Effect Cloud

# store duration in temp_global and subtract 1
execute store result score #global temp_global run data get entity @s Duration
scoreboard players remove #global temp_global 1

# store age in temp_x0
execute store result score #global temp_x0 run data get entity @s Age

# temp_global -= temp_x0
scoreboard players operation #global temp_global -= #global temp_x0

# if temp_global == 10: playsound
#execute if score #global temp_global matches 12 at @s if block ~ ~ ~ cobweb run playsound entity.spider.step block @a ~ ~ ~ 0.4 0.5

# if temp_global == 2: playsound
execute if score #global temp_global matches 2 at @s if block ~ ~ ~ cobweb run playsound block.stone.break block @a ~ ~ ~ 0.8

# if temp_global <= 0: delete block
execute if score #global temp_global matches ..0 at @s if block ~ ~ ~ cobweb run setblock ~ ~ ~ air
