# Enderman Loop
# As: Tagged Player

#Give Effects
execute unless predicate abilities_pack:see_carved_pumpkin run effect give @s minecraft:strength 1 0 true
execute if predicate abilities_pack:see_carved_pumpkin run effect give @s minecraft:blindness 4 0 false
#execute if predicate abilities_pack:see_carved_pumpkin run effect give @s minecraft:weakness 1 0 false
execute if predicate abilities_pack:see_endermite run effect give @s minecraft:strength 1 4 false

#Water Damage
function abilities_pack:abilities/tag_in_water
execute unless entity @s[tag=!in_water,tag=!in_rain] run function abilities_pack:abilities/damage

#Dodge arrows
execute unless predicate abilities_pack:is_sneaking run function abilities_pack:abilities/dodge_arrows

#set cooldown
execute as @s[tag=trigger_act] run scoreboard players set @s activate_cd 60
execute as @s[tag=trigger_act] run tag @s remove active
execute as @s[tag=trigger_act] run clear @s ender_pearl{activator:1b}

#reactivate
execute if score @s activate_cd matches ..0 run tag @s add active
