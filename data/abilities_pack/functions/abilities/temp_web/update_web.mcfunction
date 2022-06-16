# checks if a web needs to be deleted
# As: Area Effect Cloud

# store duration in apvar_0 and subtract 1
execute store result score #abilities_pack apvar_0 run data get entity @s Duration
scoreboard players remove #abilities_pack apvar_0 1

# store age in apvar_1
execute store result score #abilities_pack apvar_1 run data get entity @s Age

# apvar_0 -= apvar_1
scoreboard players operation #abilities_pack apvar_0 -= #abilities_pack apvar_1

# if apvar_0 == 10: playsound
#execute if score #abilities_pack apvar_0 matches 12 at @s if block ~ ~ ~ cobweb run playsound entity.spider.step block @a ~ ~ ~ 0.4 0.5

# if apvar_0 == 2: playsound
execute if score #abilities_pack apvar_0 matches 2 at @s if block ~ ~ ~ cobweb run playsound block.stone.break block @a ~ ~ ~ 0.8

# if apvar_0 <= 0: delete block
execute if score #abilities_pack apvar_0 matches ..0 at @s if block ~ ~ ~ cobweb run setblock ~ ~ ~ air
