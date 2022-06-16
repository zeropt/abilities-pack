# Set direction and ray cast
# As: Arrow Entity

#summon armor stand
execute at @s run summon area_effect_cloud ~ ~ ~ {Tags:["direction"]}

#copy x
execute store result score #abilities_pack apvar_0 run data get entity @s Pos[0] 1000
execute store result score #abilities_pack apvar_1 run data get entity @s Motion[0] 100
scoreboard players operation #abilities_pack apvar_0 += #abilities_pack apvar_1
execute store result entity @e[type=area_effect_cloud,tag=direction,limit=1,sort=nearest] Pos[0] double 0.001 run scoreboard players get #abilities_pack apvar_0

#copy y
execute store result score #abilities_pack apvar_0 run data get entity @s Pos[1] 1000
execute store result score #abilities_pack apvar_1 run data get entity @s Motion[1] 100
scoreboard players operation #abilities_pack apvar_0 += #abilities_pack apvar_1
execute store result entity @e[type=area_effect_cloud,tag=direction,limit=1,sort=nearest] Pos[1] double 0.001 run scoreboard players get #abilities_pack apvar_0

#copy z
execute store result score #abilities_pack apvar_0 run data get entity @s Pos[2] 1000
execute store result score #abilities_pack apvar_1 run data get entity @s Motion[2] 100
scoreboard players operation #abilities_pack apvar_0 += #abilities_pack apvar_1
execute store result entity @e[type=area_effect_cloud,tag=direction,limit=1,sort=nearest] Pos[2] double 0.001 run scoreboard players get #abilities_pack apvar_0

#set raycast distance
scoreboard players set #abilities_pack apvar_0 10

#run raycast
execute at @s facing entity @e[type=area_effect_cloud,tag=direction,limit=1,sort=nearest] feet positioned ^ ^ ^0.5 run function abilities_pack:abilities/dodge_arrows/raycast
