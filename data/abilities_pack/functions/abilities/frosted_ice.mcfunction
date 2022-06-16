# replace water with ice since the frosted_ice block is buggy
# At: Location

execute align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ water[level=0] run function abilities_pack:abilities/frosted_ice/place
execute align xyz positioned ~0.5 ~ ~0.5 if entity @e[type=area_effect_cloud,tag=frosted_ice,distance=..0.5] run function abilities_pack:abilities/frosted_ice/refresh
