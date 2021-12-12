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
execute as @s[tag=trigger_act] run scoreboard players set @s activate_cd 120
execute as @s[tag=trigger_act] run tag @s remove active

#reactivate
execute if score @s activate_cd matches ..0 run tag @s add active