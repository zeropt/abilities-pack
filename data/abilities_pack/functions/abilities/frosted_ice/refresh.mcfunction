# refresh frosted basalt
# At: Location

#kill current frosted_ice
kill @e[type=area_effect_cloud,tag=frosted_ice,distance=..0.5]

#replace with a new frosted_ice
setblock ~ ~ ~ ice replace
summon area_effect_cloud ~ ~ ~ {Duration:120,Tags:["frosted_ice"]}
