# set arrow to a frosted arrow
# As: Arrow

#tag arrow
tag @s add frosted_arrow

#turn regular arrows into slowness arrows
scoreboard players set #abilities_pack apvar_0 0
execute store success score #abilities_pack apvar_0 run data get entity @s Potion
execute as @s[type=arrow] if score #abilities_pack apvar_0 matches 0 run data merge entity @s {SoundEvent:"entity.skeleton.converted_to_stray",CustomPotionEffects:[{Id:2b,Amplifier:3b,Duration:100}]}
