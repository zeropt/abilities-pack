# Fox Loop
# As: Player

#Give Effects
effect give @s minecraft:luck 2 1 true
execute if predicate abilities_pack:is_sprinting run effect give @s minecraft:jump_boost 1 3 true
execute if predicate abilities_pack:in_mainhand run effect give @s minecraft:speed 1 1 false
execute if predicate abilities_pack:clear_day unless predicate abilities_pack:is_dim run effect give @s weakness 1 0 true
execute if predicate abilities_pack:clear_day unless predicate abilities_pack:is_dim run effect give @s hunger 1 2 true

#sleep effects
execute as @s[tag=slept] run function abilities_pack:abilities/clear_bad_effects
execute as @s[tag=slept] run effect give @s minecraft:regeneration 10 0 false

#Anger wolves
function abilities_pack:abilities/anger_wolves
