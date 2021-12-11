# Launches entities within hit radius
# As: Player

#launch entities
tag @s add golem_source
execute at @s as @e[tag=!golem_source, distance=..3] run function abilities_pack:abilities/launch_player
tag @s remove golem_source

#playsound
execute at @s run playsound entity.iron_golem.attack player @a ~ ~ ~ 1.0
