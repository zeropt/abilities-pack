# set the spider effect
# As: Player

# get the current lunar stage
execute store result score #global temp_x0 run time query day
scoreboard players set #global temp_global 8
scoreboard players operation #global temp_x0 %= #global temp_global

# @s temp_x0 = rand(0-99)
execute at @s run summon area_effect_cloud ~ ~ ~ {Tags:["rng"]}
execute at @s store result score @s temp_x0 run data get entity @e[type=area_effect_cloud,tag=rng,limit=1,sort=nearest] UUID[0]
scoreboard players set #global temp_global 100
scoreboard players operation @s temp_x0 %= #global temp_global
kill @e[type=area_effect_cloud,tag=rng]

#scoreboard players operation @s test = @s temp_x0

#full moon 5% chance of no effect
execute if score #global temp_x0 matches 0 run scoreboard players set @s[scores={temp_x0=0..4}] effect_id -1

#gibbos moon 20% chance of no effect
execute if score #global temp_x0 matches 1 run scoreboard players set @s[scores={temp_x0=0..19}] effect_id -1
execute if score #global temp_x0 matches 7 run scoreboard players set @s[scores={temp_x0=0..19}] effect_id -1

#half moon 50% chance of no effect
execute if score #global temp_x0 matches 2 run scoreboard players set @s[scores={temp_x0=0..49}] effect_id -1
execute if score #global temp_x0 matches 6 run scoreboard players set @s[scores={temp_x0=0..49}] effect_id -1

#crescent moon 80% chance of no effect
execute if score #global temp_x0 matches 3 run scoreboard players set @s[scores={temp_x0=0..79}] effect_id -1
execute if score #global temp_x0 matches 5 run scoreboard players set @s[scores={temp_x0=0..79}] effect_id -1

#new moon 95% chance of no effect
execute if score #global temp_x0 matches 4 run scoreboard players set @s[scores={temp_x0=0..94}] effect_id -1

# @s temp_x0 = rand(0-4)
execute at @s run summon area_effect_cloud ~ ~ ~ {Tags:["rng"]}
execute at @s store result score @s temp_x0 run data get entity @e[type=area_effect_cloud,tag=rng,limit=1,sort=nearest] UUID[0]
scoreboard players set #global temp_global 5
scoreboard players operation @s temp_x0 %= #global temp_global
kill @e[type=area_effect_cloud,tag=rng]

# set effect
execute unless score @s effect_id matches -1 run scoreboard players operation @s effect_id = @s temp_x0
