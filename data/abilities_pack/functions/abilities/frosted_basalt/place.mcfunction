# place frosted basalt
# At: Location

setblock ~ ~ ~ basalt replace
summon area_effect_cloud ~ ~ ~ {Duration:120,Tags:["frosted_basalt"]}
playsound block.lava.extinguish block @a ~ ~ ~ 0.05
particle minecraft:large_smoke ~ ~1.0 ~ 0.25 0.125 0.25 0 5 normal
