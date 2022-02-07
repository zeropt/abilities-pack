# Blaze Loop
# As: Player

#give Fire Resistance
effect give @s minecraft:fire_resistance 1 0 true

#water Damage
function abilities_pack:abilities/tag_in_water
execute unless entity @s[tag=!in_water,tag=!in_rain] run function abilities_pack:abilities/damage

#heal in fire
function abilities_pack:abilities/fire_heal

#particles
execute as @s[tag=active,predicate=abilities_pack:in_mainhand] run function abilities_pack:blaze/ambient

#shoot fireball
execute as @s[tag=trigger_act] run function abilities_pack:blaze/activate

#recharge
execute as @s[scores={activate_cd=..0,act_target=..2}] run function abilities_pack:blaze/recharge

#activation
tag @s add active
execute as @s[scores={act_target=0}] run tag @s remove active
