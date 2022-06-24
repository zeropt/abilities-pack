# Run the sheep spell raycast
# As: Player

#playsound
execute at @s run playsound entity.evoker.prepare_wololo player @a ~ ~ ~ 0.8
function abilities_pack:abilities/trigger_vibration

scoreboard players set #abilities_pack apvar_0 32
tag @s add evoker_source
execute at @s anchored eyes positioned ^ ^ ^0.4 run function abilities_pack:abilities/sheep_spell/raycast
tag @s remove evoker_source

#particles
scoreboard players set #abilities_pack apvar_0 100
function abilities_pack:abilities/sheep_spell/particles
