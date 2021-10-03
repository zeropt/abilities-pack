# Run the sheep spell raycast
# As: Player

scoreboard players set #global temp_global 32
tag @s add evoker_source
execute at @s anchored eyes positioned ^ ^ ^0.4 run function abilities_pack:abilities/sheep_spell/raycast
tag @s remove evoker_source
