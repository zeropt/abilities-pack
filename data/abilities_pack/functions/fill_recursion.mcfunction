# Loops until the correct number of activators is met
# As: Player

#give activator
function abilities_pack:give_activator

#increment counter
scoreboard players add #global temp_global 1

#if counter < target: run again
execute if score #global temp_global < @s act_target run function abilities_pack:fill_recursion
