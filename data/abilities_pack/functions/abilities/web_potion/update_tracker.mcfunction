# update tracker
# As: Area Effect Cloud

# store duration in apvar_0 and subtract 1
execute store result score #abilities_pack apvar_0 run data get entity @s Duration
scoreboard players remove #abilities_pack apvar_0 1

# store age in apvar_1
execute store result score #abilities_pack apvar_1 run data get entity @s Age

# apvar_0 -= apvar_1
scoreboard players operation #abilities_pack apvar_0 -= #abilities_pack apvar_1

# if apvar_0 <= 0: temp_web
execute if score #abilities_pack apvar_0 matches ..0 at @s run function abilities_pack:abilities/web_potion/place_web
