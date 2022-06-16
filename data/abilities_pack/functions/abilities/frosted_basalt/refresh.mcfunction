# refresh frosted basalt
# At: Location

#kill current frosted_basalt
kill @e[type=area_effect_cloud,tag=frosted_basalt,distance=..0.5]

#replace with a new frosted_basalt
setblock ~ ~ ~ basalt replace
summon area_effect_cloud ~ ~ ~ {Duration:120,Tags:["frosted_basalt"]}
