# Burn player
# As: Player

#damage on a cooldown
execute unless score @s damage_cd matches ..2147483647 run function abilities_pack:abilities/burn/give 

#particles
execute at @s run particle minecraft:smoke ~ ~0.6 ~ 0.125 0.25 0.125 0 2 normal
execute as @s[tag=slow_tick] at @s run particle minecraft:small_flame ~ ~0.6 ~ 0.125 0.25 0.125 0.05 1 normal
