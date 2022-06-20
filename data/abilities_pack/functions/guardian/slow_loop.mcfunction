# Guardian slow loop
# As: Player

#Water Breathing
effect give @s minecraft:water_breathing 1 0 true
execute as @s[tag=!in_water] run effect give @s minecraft:slowness 1 2 true
