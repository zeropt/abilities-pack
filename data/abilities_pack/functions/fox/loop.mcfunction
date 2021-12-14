# Fox Loop
# As: Player

#Give Effects
effect give @s minecraft:luck 2 1 true
execute if predicate abilities_pack:is_sprinting unless predicate abilities_pack:has_elytra run effect give @s minecraft:jump_boost 1 3 true
execute if predicate abilities_pack:is_sprinting if predicate abilities_pack:has_elytra run effect give @s minecraft:jump_boost 1 1 true
execute at @s if predicate abilities_pack:clear_day unless predicate abilities_pack:is_dim run effect give @s weakness 1 0 true
execute at @s if predicate abilities_pack:clear_day unless predicate abilities_pack:is_dim run effect give @s hunger 1 2 true

#sleep effects
execute as @s[tag=slept] run function abilities_pack:abilities/clear_bad_effects
execute as @s[tag=slept] run effect give @s minecraft:regeneration 10 0 false

#Anger wolves
function abilities_pack:abilities/anger_wolves

#speed boost
execute as @s[tag=trigger_act] run function abilities_pack:abilities/fox_sprint
execute as @s[tag=trigger_act] run scoreboard players set @s activate_cd 260
execute as @s[tag=trigger_act] run tag @s remove active
execute as @s[tag=trigger_act] run clear @s warped_fungus_on_a_stick{activator:1b}

#reactivate
execute if score @s activate_cd matches ..0 run tag @s add active