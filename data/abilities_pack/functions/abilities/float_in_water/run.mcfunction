# Hold player at a fixed elevation in water
# As: Player

effect give @s minecraft:slow_falling 1 0 true
execute at @s if block ~ ~0.2 ~ minecraft:water if block ~ ~-0.8 ~ minecraft:water[level=0] run setblock ~ ~-0.8 ~ minecraft:bubble_column[drag=false] replace
