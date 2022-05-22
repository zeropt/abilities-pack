# update tracker
# As: Area Effect Cloud

# store duration in temp_global and subtract 1
execute store result score #global temp_global run data get entity @s Duration
scoreboard players remove #global temp_global 1

# store age in temp_x0
execute store result score #global temp_x0 run data get entity @s Age

# temp_global -= temp_x0
scoreboard players operation #global temp_global -= #global temp_x0

# if temp_global <= 0: temp_web
execute if score #global temp_global matches ..0 at @s run function abilities_pack:abilities/web_potion/place_web
