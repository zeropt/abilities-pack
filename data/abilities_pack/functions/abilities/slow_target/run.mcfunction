# run the raycast
# As: Player

#Raycast
scoreboard players set #abilities_pack apvar_0 10
tag @s add source
execute at @s anchored eyes rotated as @s run function abilities_pack:abilities/slow_target/raycast
tag @s remove source
