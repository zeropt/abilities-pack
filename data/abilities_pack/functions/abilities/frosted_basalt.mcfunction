# replace lava with frosted basalt
# At: Location

execute align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ lava[level=0] run function abilities_pack:abilities/frosted_basalt/place
execute align xyz positioned ~0.5 ~ ~0.5 if entity @e[type=area_effect_cloud,tag=frosted_basalt,distance=..0.5] run function abilities_pack:abilities/frosted_basalt/refresh
