# Maintains an infinite health boost
# As: Player

#if no effect: tag and give effect
execute unless predicate abilities_pack:has_health_boost run tag @s add refilling
execute unless predicate abilities_pack:has_health_boost run effect give @s minecraft:health_boost 1000000 2 true

#if refilling
execute as @s[tag=refilling] if score @s health >= @s health_tracker run tag @s remove refilling
execute as @s[tag=refilling] run effect give @s minecraft:instant_health 1 0 true

#else update health_tracker
execute as @s[tag=!refilling] run scoreboard players operation @s health_tracker = @s health
