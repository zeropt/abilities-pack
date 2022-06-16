# summon attack particles recursively
# As: Player

#decrement apvar_0
scoreboard players remove #abilities_pack apvar_0 1

#summon particle
execute at @s run particle entity_effect ~ ~0.6 ~ 0.325 0.157 0.427 1 0 normal

#call again
execute if score #abilities_pack apvar_0 matches 1.. run function abilities_pack:abilities/evoker_fangs/particles
