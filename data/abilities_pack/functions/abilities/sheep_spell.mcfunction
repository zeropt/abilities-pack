# Run the sheep spell raycast
# As: Player

scoreboard players set #global temp_global 32
tag @s add evoker_source
execute at @s anchored eyes positioned ^ ^ ^0.4 run function abilities_pack:abilities/sheep_spell/raycast
tag @s remove evoker_source

#playsound
execute at @s run playsound entity.evoker.prepare_wololo player @a ~ ~ ~ 0.8

#particles
scoreboard players set #global temp_global 100
function abilities_pack:abilities/sheep_spell/particles
