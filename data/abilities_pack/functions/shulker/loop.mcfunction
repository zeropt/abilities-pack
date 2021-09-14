# Shulker Loop
# As: Tagged Player

#effects
execute if predicate abilities_pack:is_sneaking run function abilities_pack:abilities/closed_shulker
execute unless predicate abilities_pack:is_sneaking run effect clear @s minecraft:slowness
execute unless predicate abilities_pack:is_sneaking run effect give @s minecraft:slowness 1 0 true
execute unless predicate abilities_pack:is_sneaking run effect clear @s minecraft:resistance

#check for existing shulker bullets
tag @s add ready
execute at @s as @e[type=minecraft:shulker_bullet] if score @s player_id = @p player_id run tag @p remove ready
execute as @s[tag=!ready] run scoreboard players set @s activate_cd 40

#switch out activators
execute if predicate abilities_pack:is_sneaking if predicate abilities_pack:in_slot run item replace entity @s hotbar.0 with shulker_shell{display:{Name:'{"text":"Closed"}'},CustomModelData:0,activator:1b}
execute unless predicate abilities_pack:is_sneaking if predicate abilities_pack:in_slot run clear @s shulker_shell{activator:1b}

execute unless score @s activate_cd matches 0 unless predicate abilities_pack:is_sneaking if predicate abilities_pack:in_slot run item replace entity @s hotbar.0 with stick{display:{Name:'{"text":"Cooldown"}'},CustomModelData:0,activator:1b}
execute if score @s activate_cd matches 0 if predicate abilities_pack:in_slot run clear @s stick{activator:1b}


#kill when sneak activating
#execute if score @s activate matches 1 if predicate abilities_pack:is_sneaking run function abilities_pack:abilities/shulker_bullet/destruct

#set target
execute if score @s activate matches 1 if predicate abilities_pack:see_entity_shulker run function abilities_pack:abilities/shoot_shulker_bullet
