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
execute as @s[predicate=abilities_pack:in_mainhand,scores={act_target=1..}] run function abilities_pack:blaze/ambient

#shoot fireball
execute as @s[tag=trigger_act] run function abilities_pack:blaze/activate

#recharge
execute as @s[scores={activate_cd=..0,act_target=..2}] run function abilities_pack:blaze/recharge
