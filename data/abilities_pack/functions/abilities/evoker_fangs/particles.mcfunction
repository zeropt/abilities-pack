# summon attack particles recursively
# As: Player

#decrement temp_global
scoreboard players remove #global temp_global 1

#summon particle
execute at @s run particle entity_effect ~ ~0.6 ~ 0.325 0.157 0.427 1 0 normal

#call again
execute if score #global temp_global matches 1.. run function abilities_pack:abilities/evoker_fangs/particles
