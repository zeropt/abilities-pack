# place frosted_ice
# At: Location

setblock ~ ~ ~ ice replace
summon area_effect_cloud ~ ~ ~ {Duration:120,Tags:["frosted_ice"]}
# playsound block.lava.extinguish block @a ~ ~ ~ 0.05
particle minecraft:snowflake ~ ~1.0 ~ 0.25 0.125 0.25 0 1 normal
