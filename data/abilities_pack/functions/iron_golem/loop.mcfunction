#Iron Golem Loop
# As: Tagged Player

#Give Effects
effect give @s minecraft:strength 1 0 true
effect give @s minecraft:slowness 1 1 true

#infinite health boost
function abilities_pack:abilities/inf_health_boost

#Golem launch
function abilities_pack:abilities/launch_target

#Poppy
execute as @s[tag=trigger_act] run function abilities_pack:iron_golem/activate

#reactivate
execute as @s[scores={activate_cd=..0}] run tag @s add active
