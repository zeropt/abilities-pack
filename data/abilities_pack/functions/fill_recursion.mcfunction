# Loops until the correct number of activators is met
# As: Player

#give activator
function abilities_pack:give_activator

#increment counter
scoreboard players add #abilities_pack apvar_0 1

#if counter < target: run again
execute if score #abilities_pack apvar_0 < @s act_target run function abilities_pack:fill_recursion
