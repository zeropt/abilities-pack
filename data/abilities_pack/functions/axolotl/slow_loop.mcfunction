# Axolotl slow loop
# As: Player

#effects
effect clear @s minecraft:mining_fatigue
effect give @s minecraft:water_breathing 1 0 true

#reset wet_cd if wet
execute as @s[tag=in_water] run scoreboard players set @s wet_cd 1200
execute as @s[tag=in_rain] run scoreboard players set @s wet_cd 1200
scoreboard players set #abilities_pack apvar_0 0
execute store result score #abilities_pack apvar_0 run advancement revoke @s only abilities_pack:drank_water
execute if score #abilities_pack apvar_0 matches 1 run scoreboard players set @s wet_cd 1200
