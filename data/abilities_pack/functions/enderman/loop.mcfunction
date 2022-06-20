# Enderman Loop
# As: Tagged Player

#Give Effects
execute if predicate abilities_pack:see_carved_pumpkin run effect give @s minecraft:weakness 1 0 false
execute if predicate abilities_pack:see_carved_pumpkin run effect give @s minecraft:blindness 4 0 false

#Water Damage
function abilities_pack:abilities/tag_in_water
function abilities_pack:abilities/tag_in_rain
execute unless entity @s[tag=!in_water,tag=!in_rain] run function abilities_pack:abilities/damage

#Dodge arrows
execute unless predicate abilities_pack:is_sneaking run function abilities_pack:abilities/dodge_arrows

#particles
execute unless predicate abilities_pack:is_sneaking at @s run particle minecraft:portal ~ ~0.6 ~ 0.0 0.0 0.0 1 1 normal

#set cooldown
execute as @s[tag=trigger_act] run function abilities_pack:enderman/activate

#reactivate
execute as @s[scores={activate_cd=..0,act_target=0}] run scoreboard players set @s act_target 1
