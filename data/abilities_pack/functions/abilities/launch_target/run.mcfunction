# run the raycast
# As: Player

#Raycast
scoreboard players set #global temp_global 10
tag @s add source
execute at @s anchored eyes rotated as @s run function abilities_pack:abilities/launch_target/raycast
tag @s remove source

#playsound
execute at @s run playsound entity.iron_golem.attack player @a ~ ~ ~ 6.0
