#Iron Golem Loop
# As: Tagged Player

#Give Effects
effect give @s minecraft:strength 1 1 true
effect give @s minecraft:slowness 1 1 true

#infinite health boost
function abilities_pack:abilities/inf_health_boost

#Golem launch
execute as @s[tag=trigger_act] run function abilities_pack:abilities/iron_golem_launch
execute as @s[tag=trigger_act] run scoreboard players set @s activate_cd 20
execute as @s[tag=trigger_act] run tag @s remove active
execute as @s[tag=trigger_act] run clear @s warped_fungus_on_a_stick{activator:1b}

#poppy when sneaking
execute if score @s poppy_counter matches 1.. run scoreboard players set @s activate_cd 40
execute if score @s poppy_counter matches 1.. run tag @s remove active
execute if score @s poppy_counter matches 1.. run scoreboard players set @s poppy_counter 0
execute as @s[tag=active] if predicate abilities_pack:is_sneaking if predicate abilities_pack:in_slot run item replace entity @s hotbar.0 with poppy{activator:1b}
execute unless predicate abilities_pack:is_sneaking if predicate abilities_pack:in_slot run clear @s poppy{activator:1b}

#reactivate
execute if score @s activate_cd matches ..0 run tag @s add active