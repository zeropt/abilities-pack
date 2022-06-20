# Blaze Loop
# As: Player

#water Damage
function abilities_pack:abilities/tag_in_water
function abilities_pack:abilities/tag_in_rain
execute unless entity @s[tag=!in_water,tag=!in_rain] run function abilities_pack:abilities/damage

#particles
execute as @s[predicate=abilities_pack:activator_in_mainhand] run function abilities_pack:blaze/ambient

#shoot fireball
execute as @s[tag=trigger_act] run function abilities_pack:blaze/activate

#recharge
execute as @s[scores={activate_cd=..0,act_target=..2}] run function abilities_pack:blaze/recharge
