# Fox slow loop
# As: Player

#tags
execute at @s if predicate abilities_pack:clear_day unless predicate abilities_pack:is_dim run tag @s add too_bright
execute as @s[tag=!too_bright] if predicate abilities_pack:is_sneaking if predicate abilities_pack:activator_in_mainhand run tag @s add resting
execute as @s[tag=!too_bright] if predicate abilities_pack:is_sneaking if predicate abilities_pack:placeholder_in_mainhand run tag @s add resting

#effects
effect give @s minecraft:luck 2 1 true
execute as @s[tag=too_bright] run effect give @s hunger 1 2 true

#rest effects
execute as @s[tag=resting,scores={sneak_dur=40..}] run function abilities_pack:fox/rest_effects
execute as @s[tag=!resting] run attribute @s minecraft:generic.movement_speed base set 0.1

#clear tags
tag @s remove too_bright
tag @s remove resting

#Anger wolves
function abilities_pack:abilities/anger_wolves
