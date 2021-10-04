# Blaze Loop
# As: Player

#give Fire Resistance
effect give @s minecraft:fire_resistance 1 0 true

#water Damage
function abilities_pack:abilities/tag_in_water
execute unless entity @s[tag=!in_water,tag=!in_rain] run function abilities_pack:abilities/damage

#particles
execute if score @s activate_cd matches 0 if predicate abilities_pack:in_mainhand at @s run function abilities_pack:blaze/particles

#shoot fireball
execute as @s[tag=trigger_act] if predicate abilities_pack:in_mainhand as @e[type=snowball,nbt={Item:{tag:{activator:1b}}},limit=1,sort=nearest] run function abilities_pack:abilities/small_fireball_replace
execute as @s[tag=trigger_act] if predicate abilities_pack:in_mainhand run scoreboard players remove @s act_target 1
execute if score @s act_target matches 0 run scoreboard players set @s activate_cd 100
execute if score @s act_target matches 0 run tag @s remove active
execute if score @s act_target matches 0 run scoreboard players set @s act_target 3

#cooldown
execute if score @s activate_cd matches 0 run tag @s add active
