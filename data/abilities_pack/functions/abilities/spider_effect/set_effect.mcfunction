# set the spider effect
# As: Player

# get the current lunar stage
execute store result score #abilities_pack apvar_0 run time query day
scoreboard players set #abilities_pack apvar_1 8
scoreboard players operation #abilities_pack apvar_0 %= #abilities_pack apvar_1

# @s apvar_0 = rand(0-99)
execute at @s run summon area_effect_cloud ~ ~ ~ {Tags:["rng"]}
execute at @s store result score @s apvar_0 run data get entity @e[type=area_effect_cloud,tag=rng,limit=1,sort=nearest] UUID[0]
scoreboard players set #abilities_pack apvar_1 100
scoreboard players operation @s apvar_0 %= #abilities_pack apvar_1
kill @e[type=area_effect_cloud,tag=rng]

#scoreboard players operation @s test = @s apvar_0

#full moon 5% chance of no effect
execute if score #abilities_pack apvar_0 matches 0 run scoreboard players set @s[scores={apvar_0=0..4}] effect_id -1

#gibbos moon 20% chance of no effect
execute if score #abilities_pack apvar_0 matches 1 run scoreboard players set @s[scores={apvar_0=0..19}] effect_id -1
execute if score #abilities_pack apvar_0 matches 7 run scoreboard players set @s[scores={apvar_0=0..19}] effect_id -1

#half moon 50% chance of no effect
execute if score #abilities_pack apvar_0 matches 2 run scoreboard players set @s[scores={apvar_0=0..49}] effect_id -1
execute if score #abilities_pack apvar_0 matches 6 run scoreboard players set @s[scores={apvar_0=0..49}] effect_id -1

#crescent moon 80% chance of no effect
execute if score #abilities_pack apvar_0 matches 3 run scoreboard players set @s[scores={apvar_0=0..79}] effect_id -1
execute if score #abilities_pack apvar_0 matches 5 run scoreboard players set @s[scores={apvar_0=0..79}] effect_id -1

#new moon 95% chance of no effect
execute if score #abilities_pack apvar_0 matches 4 run scoreboard players set @s[scores={apvar_0=0..94}] effect_id -1

# @s apvar_0 = rand(0-4)
execute at @s run summon area_effect_cloud ~ ~ ~ {Tags:["rng"]}
execute at @s store result score @s apvar_0 run data get entity @e[type=area_effect_cloud,tag=rng,limit=1,sort=nearest] UUID[0]
scoreboard players set #abilities_pack apvar_1 5
scoreboard players operation @s apvar_0 %= #abilities_pack apvar_1
kill @e[type=area_effect_cloud,tag=rng]

# set effect
execute unless score @s effect_id matches -1 run scoreboard players operation @s effect_id = @s apvar_0
