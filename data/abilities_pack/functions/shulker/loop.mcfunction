# Shulker Loop
# As: Tagged Player

#effects
execute if predicate abilities_pack:is_sneaking run function abilities_pack:abilities/closed_shulker
execute unless predicate abilities_pack:is_sneaking run effect clear @s minecraft:slowness
execute unless predicate abilities_pack:is_sneaking run effect give @s minecraft:slowness 1 0 true
execute unless predicate abilities_pack:is_sneaking run effect clear @s minecraft:resistance
execute unless predicate abilities_pack:is_sneaking run effect clear @s minecraft:blindness

#shulker shell when sneaking
execute if predicate abilities_pack:is_sneaking if predicate abilities_pack:in_slot run item replace entity @s hotbar.0 with shulker_shell{display:{Name:'{"text":"Closed"}'},CustomModelData:0,activator:1b}
execute unless predicate abilities_pack:is_sneaking if predicate abilities_pack:in_slot run clear @s shulker_shell{activator:1b}

#tp away when under health threshold
execute if score @s health matches 10.. run tag @s add healthy
execute as @s[tag=healthy] unless score @s health matches 10.. run function abilities_pack:abilities/shulker_tp
execute as @s[tag=healthy] unless score @s health matches 10.. run tag @s remove healthy

#set target
execute as @s[tag=trigger_act] run function abilities_pack:abilities/shoot_shulker_bullet

#check for existing shulker bullets
tag @s remove bullet_exists
execute at @s as @e[type=minecraft:shulker_bullet] if score @s player_id = @p player_id run tag @p add bullet_exists
#reset cooldown
execute as @s[tag=bullet_exists] run scoreboard players set @s activate_cd 40
execute as @s[tag=bullet_exists] run tag @s remove active
execute as @s[tag=bullet_exists] run clear @s warped_fungus_on_a_stick{activator:1b}

#reactivate
execute if score @s activate_cd matches 0 run tag @s add active
