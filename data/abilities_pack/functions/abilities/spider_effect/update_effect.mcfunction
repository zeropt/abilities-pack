# give spider effect
# As: Player

# effect_id ranges from 0-4

# speed 40%
effect give @s[scores={effect_id=0..1}] speed 1 0 false

# strength 20%
effect give @s[scores={effect_id=2}] strength 1 0 false

# regeneration 20%
execute as @s[scores={effect_id=3}] run function abilities_pack:abilities/regen

# invisibility 20%
effect give @s[scores={effect_id=4}] invisibility 1 0 false

# clear effect
execute at @s unless predicate abilities_pack:under_moon run scoreboard players reset @s effect_id
